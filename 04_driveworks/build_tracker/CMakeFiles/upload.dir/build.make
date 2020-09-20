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

# Utility rule file for upload.

# Include the progress variables for this target.
include CMakeFiles/upload.dir/progress.make

CMakeFiles/upload:
	/usr/bin/cmake --build /usr/local/driveworks-0.6/samples/build_tracker --target install
	sshpass -p nvidia ssh -o StrictHostKeyChecking=no -p 22 nvidia@192.168.10.10 mkdir\ -p\ /home/nvidia/driveworks
	sshpass -p nvidia rsync --progress -rltgDz -e ssh\ -p\ 22 /usr/local/driveworks-0.6/samples/build_tracker/install/ nvidia@192.168.10.10:/home/nvidia/driveworks/

upload: CMakeFiles/upload
upload: CMakeFiles/upload.dir/build.make

.PHONY : upload

# Rule to build all files generated by this target.
CMakeFiles/upload.dir/build: upload

.PHONY : CMakeFiles/upload.dir/build

CMakeFiles/upload.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/upload.dir/cmake_clean.cmake
.PHONY : CMakeFiles/upload.dir/clean

CMakeFiles/upload.dir/depend:
	cd /usr/local/driveworks-0.6/samples/build_tracker && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /usr/local/driveworks/samples /usr/local/driveworks/samples /usr/local/driveworks-0.6/samples/build_tracker /usr/local/driveworks-0.6/samples/build_tracker /usr/local/driveworks-0.6/samples/build_tracker/CMakeFiles/upload.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/upload.dir/depend

