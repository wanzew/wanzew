# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /usr/local/driveworks/samples

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /usr/local/driveworks-0.6/samples/build_tracker

# Include any dependencies generated for this target.
include src/calibration/camera/CMakeFiles/sample_calibration_camera.dir/depend.make

# Include the progress variables for this target.
include src/calibration/camera/CMakeFiles/sample_calibration_camera.dir/progress.make

# Include the compile flags for this target's objects.
include src/calibration/camera/CMakeFiles/sample_calibration_camera.dir/flags.make

src/calibration/camera/CMakeFiles/sample_calibration_camera.dir/main.cpp.o: src/calibration/camera/CMakeFiles/sample_calibration_camera.dir/flags.make
src/calibration/camera/CMakeFiles/sample_calibration_camera.dir/main.cpp.o: /usr/local/driveworks/samples/src/calibration/camera/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/usr/local/driveworks-0.6/samples/build_tracker/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/calibration/camera/CMakeFiles/sample_calibration_camera.dir/main.cpp.o"
	cd /usr/local/driveworks-0.6/samples/build_tracker/src/calibration/camera && /home/xwang/NVIDIA/Drive/5050bL_SDK/DriveSDK/drive-t186ref-linux/../toolchains/tegra-4.9-nv/usr/bin/aarch64-gnu-linux/aarch64-gnu-linux-g++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/sample_calibration_camera.dir/main.cpp.o -c /usr/local/driveworks/samples/src/calibration/camera/main.cpp

src/calibration/camera/CMakeFiles/sample_calibration_camera.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sample_calibration_camera.dir/main.cpp.i"
	cd /usr/local/driveworks-0.6/samples/build_tracker/src/calibration/camera && /home/xwang/NVIDIA/Drive/5050bL_SDK/DriveSDK/drive-t186ref-linux/../toolchains/tegra-4.9-nv/usr/bin/aarch64-gnu-linux/aarch64-gnu-linux-g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /usr/local/driveworks/samples/src/calibration/camera/main.cpp > CMakeFiles/sample_calibration_camera.dir/main.cpp.i

src/calibration/camera/CMakeFiles/sample_calibration_camera.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sample_calibration_camera.dir/main.cpp.s"
	cd /usr/local/driveworks-0.6/samples/build_tracker/src/calibration/camera && /home/xwang/NVIDIA/Drive/5050bL_SDK/DriveSDK/drive-t186ref-linux/../toolchains/tegra-4.9-nv/usr/bin/aarch64-gnu-linux/aarch64-gnu-linux-g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /usr/local/driveworks/samples/src/calibration/camera/main.cpp -o CMakeFiles/sample_calibration_camera.dir/main.cpp.s

src/calibration/camera/CMakeFiles/sample_calibration_camera.dir/main.cpp.o.requires:

.PHONY : src/calibration/camera/CMakeFiles/sample_calibration_camera.dir/main.cpp.o.requires

src/calibration/camera/CMakeFiles/sample_calibration_camera.dir/main.cpp.o.provides: src/calibration/camera/CMakeFiles/sample_calibration_camera.dir/main.cpp.o.requires
	$(MAKE) -f src/calibration/camera/CMakeFiles/sample_calibration_camera.dir/build.make src/calibration/camera/CMakeFiles/sample_calibration_camera.dir/main.cpp.o.provides.build
.PHONY : src/calibration/camera/CMakeFiles/sample_calibration_camera.dir/main.cpp.o.provides

src/calibration/camera/CMakeFiles/sample_calibration_camera.dir/main.cpp.o.provides.build: src/calibration/camera/CMakeFiles/sample_calibration_camera.dir/main.cpp.o


src/calibration/camera/CMakeFiles/sample_calibration_camera.dir/CameraCalibrationSample.cpp.o: src/calibration/camera/CMakeFiles/sample_calibration_camera.dir/flags.make
src/calibration/camera/CMakeFiles/sample_calibration_camera.dir/CameraCalibrationSample.cpp.o: /usr/local/driveworks/samples/src/calibration/camera/CameraCalibrationSample.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/usr/local/driveworks-0.6/samples/build_tracker/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object src/calibration/camera/CMakeFiles/sample_calibration_camera.dir/CameraCalibrationSample.cpp.o"
	cd /usr/local/driveworks-0.6/samples/build_tracker/src/calibration/camera && /home/xwang/NVIDIA/Drive/5050bL_SDK/DriveSDK/drive-t186ref-linux/../toolchains/tegra-4.9-nv/usr/bin/aarch64-gnu-linux/aarch64-gnu-linux-g++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/sample_calibration_camera.dir/CameraCalibrationSample.cpp.o -c /usr/local/driveworks/samples/src/calibration/camera/CameraCalibrationSample.cpp

src/calibration/camera/CMakeFiles/sample_calibration_camera.dir/CameraCalibrationSample.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sample_calibration_camera.dir/CameraCalibrationSample.cpp.i"
	cd /usr/local/driveworks-0.6/samples/build_tracker/src/calibration/camera && /home/xwang/NVIDIA/Drive/5050bL_SDK/DriveSDK/drive-t186ref-linux/../toolchains/tegra-4.9-nv/usr/bin/aarch64-gnu-linux/aarch64-gnu-linux-g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /usr/local/driveworks/samples/src/calibration/camera/CameraCalibrationSample.cpp > CMakeFiles/sample_calibration_camera.dir/CameraCalibrationSample.cpp.i

src/calibration/camera/CMakeFiles/sample_calibration_camera.dir/CameraCalibrationSample.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sample_calibration_camera.dir/CameraCalibrationSample.cpp.s"
	cd /usr/local/driveworks-0.6/samples/build_tracker/src/calibration/camera && /home/xwang/NVIDIA/Drive/5050bL_SDK/DriveSDK/drive-t186ref-linux/../toolchains/tegra-4.9-nv/usr/bin/aarch64-gnu-linux/aarch64-gnu-linux-g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /usr/local/driveworks/samples/src/calibration/camera/CameraCalibrationSample.cpp -o CMakeFiles/sample_calibration_camera.dir/CameraCalibrationSample.cpp.s

src/calibration/camera/CMakeFiles/sample_calibration_camera.dir/CameraCalibrationSample.cpp.o.requires:

.PHONY : src/calibration/camera/CMakeFiles/sample_calibration_camera.dir/CameraCalibrationSample.cpp.o.requires

src/calibration/camera/CMakeFiles/sample_calibration_camera.dir/CameraCalibrationSample.cpp.o.provides: src/calibration/camera/CMakeFiles/sample_calibration_camera.dir/CameraCalibrationSample.cpp.o.requires
	$(MAKE) -f src/calibration/camera/CMakeFiles/sample_calibration_camera.dir/build.make src/calibration/camera/CMakeFiles/sample_calibration_camera.dir/CameraCalibrationSample.cpp.o.provides.build
.PHONY : src/calibration/camera/CMakeFiles/sample_calibration_camera.dir/CameraCalibrationSample.cpp.o.provides

src/calibration/camera/CMakeFiles/sample_calibration_camera.dir/CameraCalibrationSample.cpp.o.provides.build: src/calibration/camera/CMakeFiles/sample_calibration_camera.dir/CameraCalibrationSample.cpp.o


# Object files for target sample_calibration_camera
sample_calibration_camera_OBJECTS = \
"CMakeFiles/sample_calibration_camera.dir/main.cpp.o" \
"CMakeFiles/sample_calibration_camera.dir/CameraCalibrationSample.cpp.o"

# External object files for target sample_calibration_camera
sample_calibration_camera_EXTERNAL_OBJECTS =

src/calibration/camera/sample_calibration_camera: src/calibration/camera/CMakeFiles/sample_calibration_camera.dir/main.cpp.o
src/calibration/camera/sample_calibration_camera: src/calibration/camera/CMakeFiles/sample_calibration_camera.dir/CameraCalibrationSample.cpp.o
src/calibration/camera/sample_calibration_camera: src/calibration/camera/CMakeFiles/sample_calibration_camera.dir/build.make
src/calibration/camera/sample_calibration_camera: src/framework/libdw_samples_framework.a
src/calibration/camera/sample_calibration_camera: src/dnn/dnn_common/libdw_samples_dnn_common.a
src/calibration/camera/sample_calibration_camera: /usr/local/driveworks-0.6/targets/aarch64-linux/lib/libdriveworks.so
src/calibration/camera/sample_calibration_camera: /usr/local/cuda/targets/aarch64-linux/lib/libcudart.so
src/calibration/camera/sample_calibration_camera: /usr/local/cuda/targets/aarch64-linux/lib/stubs/libcublas.so
src/calibration/camera/sample_calibration_camera: /home/xwang/NVIDIA/Drive/5050bL_SDK/DriveSDK/drive-t186ref-linux/lib-target/libEGL.so
src/calibration/camera/sample_calibration_camera: src/framework/libdw_samples_framework.a
src/calibration/camera/sample_calibration_camera: /usr/local/driveworks/samples/3rdparty/linux-aarch64/vibrante/lib/libudev.so
src/calibration/camera/sample_calibration_camera: /usr/local/driveworks/samples/3rdparty/linux-aarch64/vibrante/lib/libusb-1.0.so
src/calibration/camera/sample_calibration_camera: /usr/local/driveworks/samples/3rdparty/linux-aarch64/vibrante_Xlibs/lib/libXrandr.so
src/calibration/camera/sample_calibration_camera: /usr/local/driveworks/samples/3rdparty/linux-aarch64/vibrante_Xlibs/lib/libXinerama.so
src/calibration/camera/sample_calibration_camera: /usr/local/driveworks/samples/3rdparty/linux-aarch64/vibrante_Xlibs/lib/libXi.so
src/calibration/camera/sample_calibration_camera: /usr/local/driveworks/samples/3rdparty/linux-aarch64/vibrante_Xlibs/lib/libXcursor.so
src/calibration/camera/sample_calibration_camera: /usr/local/driveworks/samples/3rdparty/linux-aarch64/glfw-3.1.1/lib/libglfw3.a
src/calibration/camera/sample_calibration_camera: /home/xwang/NVIDIA/Drive/5050bL_SDK/DriveSDK/drive-t186ref-linux/lib-target/libEGL.so
src/calibration/camera/sample_calibration_camera: src/calibration/camera/CMakeFiles/sample_calibration_camera.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/usr/local/driveworks-0.6/samples/build_tracker/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable sample_calibration_camera"
	cd /usr/local/driveworks-0.6/samples/build_tracker/src/calibration/camera && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/sample_calibration_camera.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/calibration/camera/CMakeFiles/sample_calibration_camera.dir/build: src/calibration/camera/sample_calibration_camera

.PHONY : src/calibration/camera/CMakeFiles/sample_calibration_camera.dir/build

src/calibration/camera/CMakeFiles/sample_calibration_camera.dir/requires: src/calibration/camera/CMakeFiles/sample_calibration_camera.dir/main.cpp.o.requires
src/calibration/camera/CMakeFiles/sample_calibration_camera.dir/requires: src/calibration/camera/CMakeFiles/sample_calibration_camera.dir/CameraCalibrationSample.cpp.o.requires

.PHONY : src/calibration/camera/CMakeFiles/sample_calibration_camera.dir/requires

src/calibration/camera/CMakeFiles/sample_calibration_camera.dir/clean:
	cd /usr/local/driveworks-0.6/samples/build_tracker/src/calibration/camera && $(CMAKE_COMMAND) -P CMakeFiles/sample_calibration_camera.dir/cmake_clean.cmake
.PHONY : src/calibration/camera/CMakeFiles/sample_calibration_camera.dir/clean

src/calibration/camera/CMakeFiles/sample_calibration_camera.dir/depend:
	cd /usr/local/driveworks-0.6/samples/build_tracker && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /usr/local/driveworks/samples /usr/local/driveworks/samples/src/calibration/camera /usr/local/driveworks-0.6/samples/build_tracker /usr/local/driveworks-0.6/samples/build_tracker/src/calibration/camera /usr/local/driveworks-0.6/samples/build_tracker/src/calibration/camera/CMakeFiles/sample_calibration_camera.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/calibration/camera/CMakeFiles/sample_calibration_camera.dir/depend

