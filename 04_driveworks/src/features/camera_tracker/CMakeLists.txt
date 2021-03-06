# Copyright (c) 2016, NVIDIA CORPORATION.  All rights reserved.

project(sample_camera_tracker C CXX)

#-------------------------------------------------------------------------------
# Project files
#-------------------------------------------------------------------------------
set(PUBLIC_DOCS
    README.md
)

set(SOURCES
    main.cpp
    ISensorIO.hpp
    SensorIOCuda.hpp
    SensorIOCuda.cpp
)

if(VIBRANTE)
    set(SOURCES
        ${SOURCES}
        SensorIONvmedia.hpp
        SensorIONvmedia.cpp
    )
endif()

set(LIBRARIES
    dw_samples_framework
    ${Driveworks_LIBRARIES}
)

#-------------------------------------------------------------------------------
# Final target
#-------------------------------------------------------------------------------
add_executable(${PROJECT_NAME} ${SOURCES})
target_link_libraries(${PROJECT_NAME} PRIVATE ${LIBRARIES})
set_property(TARGET ${PROJECT_NAME} PROPERTY FOLDER "Samples")

# ------------------------------------------------------------------------------
# Install target
# ------------------------------------------------------------------------------
sdk_add_sample(${PROJECT_NAME})
