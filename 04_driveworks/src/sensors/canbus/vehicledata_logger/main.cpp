
#include <iostream>
#include <signal.h>
#include <fstream>

#include <stdio.h>
#include <execinfo.h>
#include <stdlib.h>
#include <unistd.h>
#include <memory>
#include <sstream>
//#include <strstream>

#include <cstring>
#include <functional>
#include <list>
#include <iomanip>

#include <chrono>
#include <map>

#include <modules/sensors/canbus/can.hpp>
#include <modules/sensors/canbus/vehicle_data.h>

using namespace DriveWorks::HAL;

//------------------------------------------------------------------------------
// Variables
//------------------------------------------------------------------------------
static bool gRun = true;
static std::mutex gMutex;

std::map<CANBus::can_id, std::string> gCANIdStrMap;

struct Message {
    CANBus::can_id id              = 0;
    uint8_t payload_len            = 0;
    bool is_error                  = false;
    CANBus::timestamp_us timestamp = 0;

    uint8_t payload[8];
};

//------------------------------------------------------------------------------
std::vector<std::string> &split(const std::string &s, char delim, std::vector<std::string> &elems)
{
    std::stringstream ss(s);
    std::string item;
    while (std::getline(ss, item, delim)) {
        elems.push_back(item);
    }
    return elems;
}

//------------------------------------------------------------------------------
std::vector<std::string> split(const std::string &s, char delim)
{
    std::vector<std::string> elems;
    split(s, delim, elems);
    return elems;
}

//------------------------------------------------------------------------------
void sig_int_handler(int sig)
{
    std::lock_guard<std::mutex> lock(gMutex);

    gRun = false;
}

//------------------------------------------------------------------------------
void onCAN_Error(CANBus::timestamp_us ts, CANBus::EStatus err)
{
    std::lock_guard<std::mutex> lock(gMutex);

    std::cerr << "CANBus error at " << ts << " -> error : " << err << std::endl;
}

//------------------------------------------------------------------------------
void onCAN_InterpreterError(int32_t errorCode, const char *errorString)
{
    std::lock_guard<std::mutex> lock(gMutex);

    std::cerr << "CANBus error (0x" << std::hex << errorCode << std::dec << ") : " << errorString
              << std::endl;
}

//------------------------------------------------------------------------------
void onCAN_Message(CANBus::timestamp_us ts, CANBus::can_id id, uint16_t len, uint8_t *data)
{
    std::lock_guard<std::mutex> lock(gMutex);

    // feed message to the CAN bus data interpreter
    CANBUS_Message msg;
    msg.can_id      = id;
    msg.payload_len = len;
    msg.payload     = data;

    canbus_addMessage(ts, &msg);
}

//------------------------------------------------------------------------------
int main(int argc, char **argv)
{
    struct sigaction action;
    memset(&action, 0, sizeof(action));
    action.sa_handler = sig_int_handler;

    sigaction(SIGHUP, &action, NULL);  // controlling terminal closed, Ctrl-D
    sigaction(SIGINT, &action, NULL);  // Ctrl-C
    sigaction(SIGQUIT, &action, NULL); // Ctrl-\, clean quit with core dump
    sigaction(SIGABRT, &action, NULL); // abort() called.
    sigaction(SIGTERM, &action, NULL); // kill command

    gRun = true;

    std::string canDevice  = "can0";
    std::string rawLogFile = "";
    std::string outputFile = "";
    bool formattedOutput   = true;

    if (argc <= 1) {
        std::cout << "Usage: " << argv[0] << std::endl;
        std::cout << "\t --device can0 \t\t\t\t\t: CAN network device to open(default = can0)\n";
        std::cout << "\t --log path/to/log.can \t\t\t\t: Previously logged raw CAN messages to be "
                     "parsed\n";
        std::cout << "\t --out path/to/output.log \t\t\t\t: Parsed CAN messages will be output to "
                     "the log file\n";
        std::cout << "\t --raw \t\t\t\t: If set the output will be raw, i.e. non-formatted\n";
        return -1;
    }

    gCANIdStrMap[CANBUS_VehicleData::CAR_SPEED]      = "SPEED";
    gCANIdStrMap[CANBUS_VehicleData::STEERING_ANGLE] = "ANGLE";

    // parse arguments
    for (int i = 1; i < argc; i++) {
        if (!strcmp(argv[i], "--device") && i < argc - 1) {
            canDevice = std::string(argv[i + 1]);
            i++;
        } else if (!strcmp(argv[i], "--log") && i < argc - 1) {
            rawLogFile = std::string(argv[i + 1]);
            i++;
        } else if (!strcmp(argv[i], "--out") && i < argc - 1) {
            outputFile = std::string(argv[i + 1]);
            i++;
        } else if (!strcmp(argv[i], "--raw")) {
            formattedOutput = false;
        }
    }

    // enumerate available vehicle data
    struct Data {
        CANBUS_VehicleData id;
        CANBUS_DataType type;
    };

    std::vector<Data> supportedData(canbus_getNumSupportedVehicleData());
    std::cout << "The provided interpreter supports " << supportedData.size()
              << " vehicle data types" << std::endl;
    for (size_t i = 0; i < supportedData.size(); i++) {
        supportedData[i].id   = canbus_getSupportedVehicleData(i);
        supportedData[i].type = canbus_getDataType(supportedData[i].id);

        std::cout << "[" << i << "] -> 0x" << std::hex << supportedData[i].id << std::dec;
        if (supportedData[i].type == FLOAT32)
            std::cout << "(f32)";
        if (supportedData[i].type == INT32)
            std::cout << "(i32)";

        std::cout << std::endl;
    }

    // if raw CAN log is used, we do not create can device
    std::list<Message> canMessages;
    if (rawLogFile.length()) {
        std::ifstream rawfile(rawLogFile);
        std::string line;
        while (rawfile.is_open() && std::getline(rawfile, line)) {
            // parse line for timestamp and can message
            std::vector<std::string> tsmsg = split(line, ' ');
            if (tsmsg.size() != 2)
                continue;

            std::vector<std::string> iddata = split(tsmsg[1], '#');
            if (iddata.size() != 2)
                continue;

            std::vector<std::string> data = split(iddata[1], ',');

            Message msg;
            {
                std::stringstream strts(tsmsg[0]);
                strts >> msg.timestamp;
                std::stringstream strid(iddata[0]);
                strid << std::hex;
                strid >> msg.id;
                msg.is_error = false;

                for (size_t i = 0; i < data.size(); i++) {
                    int d = 0;
                    std::stringstream strdata(data[i]);
                    strdata << std::hex;
                    strdata >> d;
                    msg.payload[i] = d;
                }
                msg.payload_len = data.size();
            }

            canMessages.push_back(msg);
        }
        rawfile.close();
    }

    // actuall canbus
    std::shared_ptr<sensors::CANBus> canbus;

    if (canMessages.empty()) {
        canbus.reset(new sensors::CANBus);

        auto currtime = canbus->getCurrentTimestampFromClockSource();

        canbus->setUseHwTimestamps(true); // try to use HW timestamping
        canbus->setReferenceTimestamp(
            currtime); // fallback reference timestamp if HW timestamping fails
        canbus->setDeviceName(canDevice);
        canbus->setOnErrorCallback(onCAN_Error);
        canbus->setOnMessageCallback(onCAN_Message);
        gRun = canbus->start() == CANBus::EStatus::OK;
    } else {
        gRun = true;
    }

    std::ostream *stream = nullptr;
    std::ofstream outStream;

    if (outputFile.length()) {
        outStream.open(outputFile);
        stream = &outStream;
    } else {
        stream = &std::cout;
    }

    // grab periodically new data from the interpreter and log it
    canbus_startInterpreter(onCAN_InterpreterError, NULL);
    while (gRun) {
        if (!canbus)
            gRun = !canMessages.empty();

        // pass message to the interpreter
        if (!canMessages.empty()) {
            Message &msg = canMessages.front();
            onCAN_Message(msg.timestamp, msg.id, msg.payload_len, msg.payload);
            canMessages.pop_front();
        }

        // dump formatted output to a file
        {
            std::lock_guard<std::mutex> lock(gMutex);

            for (const auto &data : supportedData) {
                timestamp_t ts  = 0;
                float32_t fdata = 0;
                int32_t idata   = 0;

                bool hasData = false;

                hasData =
                    hasData || (data.type == FLOAT32 && canbus_getDataf32(data.id, &ts, &fdata));
                hasData =
                    hasData || (data.type == INT32 && canbus_getDatai32(data.id, &ts, &idata));

                if (hasData) {
                    (*stream) << ts << " ";

                    if (formattedOutput && gCANIdStrMap[data.id].length()) {
                        (*stream) << gCANIdStrMap[data.id] << " ";
                    } else {
                        (*stream) << std::hex << "[0x" << data.id << "] ";
                    }

                    if (data.type == FLOAT32) {
                        (*stream) << std::dec << fdata << std::endl;
                    } else if (data.type == INT32) {
                        (*stream) << std::dec << idata << std::endl;
                    }
                }
            }
        }

        if (canbus)
            usleep(2500);
    }
    canbus_stopInterpreter();

    if (canbus)
        canbus->stop();

    return 0;
}
