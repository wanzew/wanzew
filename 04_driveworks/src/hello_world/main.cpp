/////////////////////////////////////////////////////////////////////////////////////////
// This code contains NVIDIA Confidential Information and is disclosed
// under the Mutual Non-Disclosure Agreement.
//
// Notice
// ALL NVIDIA DESIGN SPECIFICATIONS AND CODE ("MATERIALS") ARE PROVIDED "AS IS" NVIDIA MAKES
// NO REPRESENTATIONS, WARRANTIES, EXPRESSED, IMPLIED, STATUTORY, OR OTHERWISE WITH RESPECT TO
// THE MATERIALS, AND EXPRESSLY DISCLAIMS ANY IMPLIED WARRANTIES OF NONINFRINGEMENT,
// MERCHANTABILITY, OR FITNESS FOR A PARTICULAR PURPOSE.
//
// NVIDIA Corporation assumes no responsibility for the consequences of use of such
// information or for any infringement of patents or other rights of third parties that may
// result from its use. No license is granted by implication or otherwise under any patent
// or patent rights of NVIDIA Corporation. No third party distribution is allowed unless
// expressly authorized by NVIDIA.  Details are subject to change without notice.
// This code supersedes and replaces all information previously supplied.
// NVIDIA Corporation products are not authorized for use as critical
// components in life support devices or systems without express written approval of
// NVIDIA Corporation.
//
// Copyright (c) 2015-2017 NVIDIA Corporation. All rights reserved.
//
// NVIDIA Corporation and its licensors retain all intellectual property and proprietary
// rights in and to this software and related documentation and any modifications thereto.
// Any use, reproduction, disclosure or distribution of this software and related
// documentation without an express license agreement from NVIDIA Corporation is
// strictly prohibited.
//
/////////////////////////////////////////////////////////////////////////////////////////

#include <iostream>
#include <signal.h>
#include <fstream>

#include <stdio.h>
#include <stdlib.h>
#include <memory>

#include <cuda_runtime.h>
#include <cuda_profiler_api.h>

// CORE
#include <dw/core/Context.h>
#include <dw/core/Logger.h>

#include <framework/Log.hpp>

//------------------------------------------------------------------------------
void printProperties(cudaDeviceProp *props)
{
    const char *sComputeMode[] =
            {
                "Default (multiple host threads can use ::cudaSetDevice() with device simultaneously)",
                "Exclusive (only one host thread in one process is able to use ::cudaSetDevice() with this device)",
                "Prohibited (no host thread can use ::cudaSetDevice() with this device)",
                "Exclusive Process (many threads in one process is able to use ::cudaSetDevice() with this device)",
                "Unknown",
                NULL
            };

    std::cout << "CUDA Capability Major/Minor version number: " << props->major << "." << props->minor
              << std::endl
              << "Total amount of global memory in MBytes:" << static_cast<float64_t>(props->totalGlobalMem)/1048576.0
              << std::endl
              << "Memory Clock rate Ghz: " << props->memoryClockRate
              << std::endl
              << "Memory Bus Width bits: " << props->memoryBusWidth
              << std::endl
              << "L2 Cache Size: " << props->l2CacheSize
              << std::endl
              << "Maximum 1D Texture Dimension Size (x): " << props->maxTexture1D
              << std::endl
              << "Maximum 2D Texture Dimension Size (x,y): " << props->maxTexture2D[0] << ", " <<
                                                                props->maxTexture2D[1]
              << std::endl
              << "Maximum 3D Texture Dimension Size (x,y,z): " << props->maxTexture3D[0] << ", " <<
                                                                  props->maxTexture3D[1] << ", " <<
                                                                  props->maxTexture3D[2]
              << std::endl
              << "Maximum Layered 1D Texture Size, (x): " << props->maxTexture1DLayered[0] << " num: " <<
                                                             props->maxTexture1DLayered[1]
              << std::endl
              << "Maximum Layered 2D Texture Size, (x,y): " << props->maxTexture2DLayered[0] << ", " <<
                                                               props->maxTexture2DLayered[0] << " num: " <<
                                                               props->maxTexture2DLayered[2]
              << std::endl
              << "Total amount of constant memory bytes: " << props->totalConstMem
              << std::endl
              << "Total amount of shared memory per block bytes: " << props->sharedMemPerBlock
              << std::endl
              << "Total number of registers available per block: " << props->regsPerBlock
              << std::endl
              << "Warp size: " << props->warpSize
              << std::endl
              << "Maximum number of threads per multiprocessor: " << props->maxThreadsPerMultiProcessor
              << std::endl
              << "Maximum number of threads per block: " << props->maxThreadsPerBlock
              << std::endl
              << "Max dimension size of a thread block (x,y,z): " << props->maxThreadsDim[0] << "," <<
                                                                     props->maxThreadsDim[1] << "," <<
                                                                     props->maxThreadsDim[2]
              << std::endl
              << "Max dimension size of a grid size (x,y,z): " << props->maxGridSize[0] << "," <<
                                                                  props->maxGridSize[1] << "," <<
                                                                  props->maxGridSize[2]
              << std::endl
              << "Maximum memory pitch bytes: " << props->memPitch
              << std::endl
              << "Texture alignment bytes: " << props->textureAlignment
              << std::endl
              << "Concurrent copy and kernel execution: " << (props->deviceOverlap ? "Yes" : "No") <<
                 ", copy engines num: " << props->asyncEngineCount
              << std::endl
              << "Run time limit on kernels: " << (props->kernelExecTimeoutEnabled ? "Yes" : "No")
              << std::endl
              << "Integrated GPU sharing Host Memory: " << (props->integrated ? "Yes" : "No")
              << std::endl
              << "Support host page-locked memory mapping: " << (props->canMapHostMemory ? "Yes" : "No")
              << std::endl
              << "Alignment requirement for Surfaces: " << (props->surfaceAlignment ? "Yes" : "No")
              << std::endl
              << "Device has ECC support: " << (props->ECCEnabled ? "Enabled" : "Disabled")
              << std::endl
              << "Device supports Unified Addressing (UVA): " << (props->unifiedAddressing ? "Yes" : "No")
              << std::endl
              << "Device PCI Domain ID: " << props->pciDomainID << ", "
                 "Device PCI Bus ID: " << props->pciBusID <<  ", "
                 "Device PCI location ID: " << props->pciDeviceID
              << std::endl
              << "Compute Mode: " << sComputeMode[props->computeMode]
              << std::endl
              << "Concurrent kernels: " << props->concurrentKernels
              << std::endl
              << "Concurrent memory: " << props->concurrentManagedAccess
              << std::endl
              << std::endl;
}

//------------------------------------------------------------------------------
int main(int argc, char **argv)
{
    (void)argc;
    (void)argv;

    std::cout << "*************************************************" << std::endl;
    std::cout << "Welcome to Driveworks SDK" <<std::endl;

    dwContextHandle_t sdk   = DW_NULL_HANDLE;

    // create a Logger to log to console
    // we keep the ownership of the logger at the application level

    dwLogger_initialize(getConsoleLoggerCallback(true));
    dwLogger_setLogLevel(DW_LOG_VERBOSE);

    // instantiate Driveworks SDK context
    dwContextParameters sdkParams = {};
    dwVersion sdkVersion;
    dwGetVersion(&sdkVersion);
    dwStatus status = dwInitialize(&sdk, sdkVersion, &sdkParams);

    if (status != DW_SUCCESS) {
        std::cerr << "Cannot init SDK" << std::endl;
        return -1;
    }

    std::cout << "Context of Driveworks SDK successfully initialized." <<std::endl;
    std::cout << "Version: " << sdkVersion.major << "." << sdkVersion.minor << "." << sdkVersion.patch << std::endl;

    int32_t gpuCount;
    status = dwContext_getGPUCount(&gpuCount, sdk);

    if (status != DW_SUCCESS) {
        std::cerr << "Cannot get GPU count" << std::endl;
        return -1;
    }

    std::cout << "GPU devices detected: " << gpuCount <<std::endl;

    cudaDeviceProp properties{};

    for (int32_t i = 0; i < gpuCount; ++i) {
        int32_t driverVersion, runtimeVersion;
        status = dwContext_selectGPUDevice(i, sdk);
        if (status != DW_SUCCESS) {
            std::cerr << "Cannot select GPU" << std::endl;
            return -1;
        }
        status = dwContext_getCUDAProperties(&driverVersion, &runtimeVersion, sdk);
        if (status != DW_SUCCESS) {
            std::cerr << "Cannot get CUDA properties" << std::endl;
            return -1;
        }

        status = dwContext_getGPUProperties(&properties, i, sdk);
        if (status != DW_SUCCESS) {
            std::cerr << "Cannot get GPU properties" << std::endl;
            return -1;
        }

        std::cout << "----------------------------------------------" << std::endl;
        std::cout << "Device: " << i << ", " << properties.name << std::endl;
        std::cout << "CUDA Driver Version / Runtime Version : " << driverVersion/1000 << "." <<
                (driverVersion%100)/10 << " / " << runtimeVersion/1000 << "."  << (runtimeVersion%100)/10
                  << std::endl;

        printProperties(&properties);
    }

    // release used objects in correct order
    dwRelease(&sdk);
    dwLogger_release();

    std::cout << "Happy autonomous driving!" <<std::endl;

    return 0;
}
