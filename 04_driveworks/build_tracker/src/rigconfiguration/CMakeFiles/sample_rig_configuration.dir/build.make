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
include src/rigconfiguration/CMakeFiles/sample_rig_configuration.dir/depend.make

# Include the progress variables for this target.
include src/rigconfiguration/CMakeFiles/sample_rig_configuration.dir/progress.make

# Include the compile flags for this target's objects.
include src/rigconfiguration/CMakeFiles/sample_rig_configuration.dir/flags.make

src/rigconfiguration/CMakeFiles/sample_rig_configuration.dir/main.cpp.o: src/rigconfiguration/CMakeFiles/sample_rig_configuration.dir/flags.make
src/rigconfiguration/CMakeFiles/sample_rig_configuration.dir/main.cpp.o: /usr/local/driveworks/samples/src/rigconfiguration/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/usr/local/driveworks-0.6/samples/build_tracker/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/rigconfiguration/CMakeFiles/sample_rig_configuration.dir/main.cpp.o"
	cd /usr/local/driveworks-0.6/samples/build_tracker/src/rigconfiguration && /home/xwang/NVIDIA/Drive/5050bL_SDK/DriveSDK/drive-t186ref-linux/../toolchains/tegra-4.9-nv/usr/bin/aarch64-gnu-linux/aarch64-gnu-linux-g++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/sample_rig_configuration.dir/main.cpp.o -c /usr/local/driveworks/samples/src/rigconfiguration/main.cpp

src/rigconfiguration/CMakeFiles/sample_rig_configuration.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sample_rig_configuration.dir/main.cpp.i"
	cd /usr/local/driveworks-0.6/samples/build_tracker/src/rigconfiguration && /home/xwang/NVIDIA/Drive/5050bL_SDK/DriveSDK/drive-t186ref-linux/../toolchains/tegra-4.9-nv/usr/bin/aarch64-gnu-linux/aarch64-gnu-linux-g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /usr/local/driveworks/samples/src/rigconfiguration/main.cpp > CMakeFiles/sample_rig_configuration.dir/main.cpp.i

src/rigconfiguration/CMakeFiles/sample_rig_configuration.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sample_rig_configuration.dir/main.cpp.s"
	cd /usr/local/driveworks-0.6/samples/build_tracker/src/rigconfiguration && /home/xwang/NVIDIA/Drive/5050bL_SDK/DriveSDK/drive-t186ref-linux/../toolchains/tegra-4.9-nv/usr/bin/aarch64-gnu-linux/aarch64-gnu-linux-g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /usr/local/driveworks/samples/src/rigconfiguration/main.cpp -o CMakeFiles/sample_rig_configuration.dir/main.cpp.s

src/rigconfiguration/CMakeFiles/sample_rig_configuration.dir/main.cpp.o.requires:

.PHONY : src/rigconfiguration/CMakeFiles/sample_rig_configuration.dir/main.cpp.o.requires

src/rigconfiguration/CMakeFiles/sample_rig_configuration.dir/main.cpp.o.provides: src/rigconfiguration/CMakeFiles/sample_rig_configuration.dir/main.cpp.o.requires
	$(MAKE) -f src/rigconfiguration/CMakeFiles/sample_rig_configuration.dir/build.make src/rigconfiguration/CMakeFiles/sample_rig_configuration.dir/main.cpp.o.provides.build
.PHONY : src/rigconfiguration/CMakeFiles/sample_rig_configuration.dir/main.cpp.o.provides

src/rigconfiguration/CMakeFiles/sample_rig_configuration.dir/main.cpp.o.provides.build: src/rigconfiguration/CMakeFiles/sample_rig_configuration.dir/main.cpp.o


# Object files for target sample_rig_configuration
sample_rig_configuration_OBJECTS = \
"CMakeFiles/sample_rig_configuration.dir/main.cpp.o"

# External object files for target sample_rig_configuration
sample_rig_configuration_EXTERNAL_OBJECTS =

src/rigconfiguration/sample_rig_configuration: src/rigconfiguration/CMakeFiles/sample_rig_configuration.dir/main.cpp.o
src/rigconfiguration/sample_rig_configuration: src/rigconfiguration/CMakeFiles/sample_rig_configuration.dir/build.make
src/rigconfiguration/sample_rig_configuration: src/framework/libdw_samples_framework.a
src/rigconfiguration/sample_rig_configuration: /usr/local/driveworks-0.6/targets/aarch64-linux/lib/libdriveworks.so
src/rigconfiguration/sample_rig_configuration: /usr/local/cuda/targets/aarch64-linux/lib/libcudart.so
src/rigconfiguration/sample_rig_configuration: /usr/local/cuda/targets/aarch64-linux/lib/stubs/libcublas.so
src/rigconfiguration/sample_rig_configuration: /home/xwang/NVIDIA/Drive/5050bL_SDK/DriveSDK/drive-t186ref-linux/lib-target/libEGL.so
src/rigconfiguration/sample_rig_configuration: /usr/local/driveworks/samples/3rdparty/linux-aarch64/vibrante/lib/libudev.so
src/rigconfiguration/sample_rig_configuration: /usr/local/driveworks/samples/3rdparty/linux-aarch64/vibrante/lib/libusb-1.0.so
src/rigconfiguration/sample_rig_configuration: /usr/local/driveworks/samples/3rdparty/linux-aarch64/vibrante_Xlibs/lib/libXrandr.so
src/rigconfiguration/sample_rig_configuration: /usr/local/driveworks/samples/3rdparty/linux-aarch64/vibrante_Xlibs/lib/libXinerama.so
src/rigconfiguration/sample_rig_configuration: /usr/local/driveworks/samples/3rdparty/linux-aarch64/vibrante_Xlibs/lib/libXi.so
src/rigconfiguration/sample_rig_configuration: /usr/local/driveworks/samples/3rdparty/linux-aarch64/vibrante_Xlibs/lib/libXcursor.so
src/rigconfiguration/sample_rig_configuration: /usr/local/driveworks/samples/3rdparty/linux-aarch64/glfw-3.1.1/lib/libglfw3.a
src/rigconfiguration/sample_rig_configuration: /home/xwang/NVIDIA/Drive/5050bL_SDK/DriveSDK/drive-t186ref-linux/lib-target/libEGL.so
src/rigconfiguration/sample_rig_configuration: src/rigconfiguration/CMakeFiles/sample_rig_configuration.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/usr/local/driveworks-0.6/samples/build_tracker/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable sample_rig_configuration"
	cd /usr/local/driveworks-0.6/samples/build_tracker/src/rigconfiguration && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/sample_rig_configuration.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/rigconfiguration/CMakeFiles/sample_rig_configuration.dir/build: src/rigconfiguration/sample_rig_configuration

.PHONY : src/rigconfiguration/CMakeFiles/sample_rig_configuration.dir/build

src/rigconfiguration/CMakeFiles/sample_rig_configuration.dir/requires: src/rigconfiguration/CMakeFiles/sample_rig_configuration.dir/main.cpp.o.requires

.PHONY : src/rigconfiguration/CMakeFiles/sample_rig_configuration.dir/requires

src/rigconfiguration/CMakeFiles/sample_rig_configuration.dir/clean:
	cd /usr/local/driveworks-0.6/samples/build_tracker/src/rigconfiguration && $(CMAKE_COMMAND) -P CMakeFiles/sample_rig_configuration.dir/cmake_clean.cmake
.PHONY : src/rigconfiguration/CMakeFiles/sample_rig_configuration.dir/clean

src/rigconfiguration/CMakeFiles/sample_rig_configuration.dir/depend:
	cd /usr/local/driveworks-0.6/samples/build_tracker && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /usr/local/driveworks/samples /usr/local/driveworks/samples/src/rigconfiguration /usr/local/driveworks-0.6/samples/build_tracker /usr/local/driveworks-0.6/samples/build_tracker/src/rigconfiguration /usr/local/driveworks-0.6/samples/build_tracker/src/rigconfiguration/CMakeFiles/sample_rig_configuration.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/rigconfiguration/CMakeFiles/sample_rig_configuration.dir/depend

