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
include src/ipc/CMakeFiles/sample_ipc_socketclientserver.dir/depend.make

# Include the progress variables for this target.
include src/ipc/CMakeFiles/sample_ipc_socketclientserver.dir/progress.make

# Include the compile flags for this target's objects.
include src/ipc/CMakeFiles/sample_ipc_socketclientserver.dir/flags.make

src/ipc/CMakeFiles/sample_ipc_socketclientserver.dir/sample_ipc_socketclientserver.cpp.o: src/ipc/CMakeFiles/sample_ipc_socketclientserver.dir/flags.make
src/ipc/CMakeFiles/sample_ipc_socketclientserver.dir/sample_ipc_socketclientserver.cpp.o: /usr/local/driveworks/samples/src/ipc/sample_ipc_socketclientserver.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/usr/local/driveworks-0.6/samples/build_tracker/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/ipc/CMakeFiles/sample_ipc_socketclientserver.dir/sample_ipc_socketclientserver.cpp.o"
	cd /usr/local/driveworks-0.6/samples/build_tracker/src/ipc && /home/xwang/NVIDIA/Drive/5050bL_SDK/DriveSDK/drive-t186ref-linux/../toolchains/tegra-4.9-nv/usr/bin/aarch64-gnu-linux/aarch64-gnu-linux-g++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/sample_ipc_socketclientserver.dir/sample_ipc_socketclientserver.cpp.o -c /usr/local/driveworks/samples/src/ipc/sample_ipc_socketclientserver.cpp

src/ipc/CMakeFiles/sample_ipc_socketclientserver.dir/sample_ipc_socketclientserver.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sample_ipc_socketclientserver.dir/sample_ipc_socketclientserver.cpp.i"
	cd /usr/local/driveworks-0.6/samples/build_tracker/src/ipc && /home/xwang/NVIDIA/Drive/5050bL_SDK/DriveSDK/drive-t186ref-linux/../toolchains/tegra-4.9-nv/usr/bin/aarch64-gnu-linux/aarch64-gnu-linux-g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /usr/local/driveworks/samples/src/ipc/sample_ipc_socketclientserver.cpp > CMakeFiles/sample_ipc_socketclientserver.dir/sample_ipc_socketclientserver.cpp.i

src/ipc/CMakeFiles/sample_ipc_socketclientserver.dir/sample_ipc_socketclientserver.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sample_ipc_socketclientserver.dir/sample_ipc_socketclientserver.cpp.s"
	cd /usr/local/driveworks-0.6/samples/build_tracker/src/ipc && /home/xwang/NVIDIA/Drive/5050bL_SDK/DriveSDK/drive-t186ref-linux/../toolchains/tegra-4.9-nv/usr/bin/aarch64-gnu-linux/aarch64-gnu-linux-g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /usr/local/driveworks/samples/src/ipc/sample_ipc_socketclientserver.cpp -o CMakeFiles/sample_ipc_socketclientserver.dir/sample_ipc_socketclientserver.cpp.s

src/ipc/CMakeFiles/sample_ipc_socketclientserver.dir/sample_ipc_socketclientserver.cpp.o.requires:

.PHONY : src/ipc/CMakeFiles/sample_ipc_socketclientserver.dir/sample_ipc_socketclientserver.cpp.o.requires

src/ipc/CMakeFiles/sample_ipc_socketclientserver.dir/sample_ipc_socketclientserver.cpp.o.provides: src/ipc/CMakeFiles/sample_ipc_socketclientserver.dir/sample_ipc_socketclientserver.cpp.o.requires
	$(MAKE) -f src/ipc/CMakeFiles/sample_ipc_socketclientserver.dir/build.make src/ipc/CMakeFiles/sample_ipc_socketclientserver.dir/sample_ipc_socketclientserver.cpp.o.provides.build
.PHONY : src/ipc/CMakeFiles/sample_ipc_socketclientserver.dir/sample_ipc_socketclientserver.cpp.o.provides

src/ipc/CMakeFiles/sample_ipc_socketclientserver.dir/sample_ipc_socketclientserver.cpp.o.provides.build: src/ipc/CMakeFiles/sample_ipc_socketclientserver.dir/sample_ipc_socketclientserver.cpp.o


# Object files for target sample_ipc_socketclientserver
sample_ipc_socketclientserver_OBJECTS = \
"CMakeFiles/sample_ipc_socketclientserver.dir/sample_ipc_socketclientserver.cpp.o"

# External object files for target sample_ipc_socketclientserver
sample_ipc_socketclientserver_EXTERNAL_OBJECTS =

src/ipc/sample_ipc_socketclientserver: src/ipc/CMakeFiles/sample_ipc_socketclientserver.dir/sample_ipc_socketclientserver.cpp.o
src/ipc/sample_ipc_socketclientserver: src/ipc/CMakeFiles/sample_ipc_socketclientserver.dir/build.make
src/ipc/sample_ipc_socketclientserver: src/framework/libdw_samples_framework.a
src/ipc/sample_ipc_socketclientserver: /usr/local/driveworks-0.6/targets/aarch64-linux/lib/libdriveworks.so
src/ipc/sample_ipc_socketclientserver: /usr/local/cuda/targets/aarch64-linux/lib/libcudart.so
src/ipc/sample_ipc_socketclientserver: /usr/local/cuda/targets/aarch64-linux/lib/stubs/libcublas.so
src/ipc/sample_ipc_socketclientserver: /home/xwang/NVIDIA/Drive/5050bL_SDK/DriveSDK/drive-t186ref-linux/lib-target/libEGL.so
src/ipc/sample_ipc_socketclientserver: /usr/local/driveworks/samples/3rdparty/linux-aarch64/vibrante/lib/libudev.so
src/ipc/sample_ipc_socketclientserver: /usr/local/driveworks/samples/3rdparty/linux-aarch64/vibrante/lib/libusb-1.0.so
src/ipc/sample_ipc_socketclientserver: /usr/local/driveworks/samples/3rdparty/linux-aarch64/vibrante_Xlibs/lib/libXrandr.so
src/ipc/sample_ipc_socketclientserver: /usr/local/driveworks/samples/3rdparty/linux-aarch64/vibrante_Xlibs/lib/libXinerama.so
src/ipc/sample_ipc_socketclientserver: /usr/local/driveworks/samples/3rdparty/linux-aarch64/vibrante_Xlibs/lib/libXi.so
src/ipc/sample_ipc_socketclientserver: /usr/local/driveworks/samples/3rdparty/linux-aarch64/vibrante_Xlibs/lib/libXcursor.so
src/ipc/sample_ipc_socketclientserver: /usr/local/driveworks/samples/3rdparty/linux-aarch64/glfw-3.1.1/lib/libglfw3.a
src/ipc/sample_ipc_socketclientserver: /home/xwang/NVIDIA/Drive/5050bL_SDK/DriveSDK/drive-t186ref-linux/lib-target/libEGL.so
src/ipc/sample_ipc_socketclientserver: src/ipc/CMakeFiles/sample_ipc_socketclientserver.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/usr/local/driveworks-0.6/samples/build_tracker/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable sample_ipc_socketclientserver"
	cd /usr/local/driveworks-0.6/samples/build_tracker/src/ipc && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/sample_ipc_socketclientserver.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/ipc/CMakeFiles/sample_ipc_socketclientserver.dir/build: src/ipc/sample_ipc_socketclientserver

.PHONY : src/ipc/CMakeFiles/sample_ipc_socketclientserver.dir/build

src/ipc/CMakeFiles/sample_ipc_socketclientserver.dir/requires: src/ipc/CMakeFiles/sample_ipc_socketclientserver.dir/sample_ipc_socketclientserver.cpp.o.requires

.PHONY : src/ipc/CMakeFiles/sample_ipc_socketclientserver.dir/requires

src/ipc/CMakeFiles/sample_ipc_socketclientserver.dir/clean:
	cd /usr/local/driveworks-0.6/samples/build_tracker/src/ipc && $(CMAKE_COMMAND) -P CMakeFiles/sample_ipc_socketclientserver.dir/cmake_clean.cmake
.PHONY : src/ipc/CMakeFiles/sample_ipc_socketclientserver.dir/clean

src/ipc/CMakeFiles/sample_ipc_socketclientserver.dir/depend:
	cd /usr/local/driveworks-0.6/samples/build_tracker && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /usr/local/driveworks/samples /usr/local/driveworks/samples/src/ipc /usr/local/driveworks-0.6/samples/build_tracker /usr/local/driveworks-0.6/samples/build_tracker/src/ipc /usr/local/driveworks-0.6/samples/build_tracker/src/ipc/CMakeFiles/sample_ipc_socketclientserver.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/ipc/CMakeFiles/sample_ipc_socketclientserver.dir/depend
