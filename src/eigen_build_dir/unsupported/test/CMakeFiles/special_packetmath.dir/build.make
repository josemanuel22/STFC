# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.19

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Disable VCS-based implicit rules.
% : %,v


# Disable VCS-based implicit rules.
% : RCS/%


# Disable VCS-based implicit rules.
% : RCS/%,v


# Disable VCS-based implicit rules.
% : SCCS/s.%


# Disable VCS-based implicit rules.
% : s.%


.SUFFIXES: .hpux_make_needs_suffix_list


# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/local/Cellar/cmake/3.19.2/bin/cmake

# The command to remove a file.
RM = /usr/local/Cellar/cmake/3.19.2/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/jose/Documents/GitHub/STFC/src/eigen

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/jose/Documents/GitHub/STFC/src/eigen_build_dir

# Utility rule file for special_packetmath.

# Include the progress variables for this target.
include unsupported/test/CMakeFiles/special_packetmath.dir/progress.make

special_packetmath: unsupported/test/CMakeFiles/special_packetmath.dir/build.make

.PHONY : special_packetmath

# Rule to build all files generated by this target.
unsupported/test/CMakeFiles/special_packetmath.dir/build: special_packetmath

.PHONY : unsupported/test/CMakeFiles/special_packetmath.dir/build

unsupported/test/CMakeFiles/special_packetmath.dir/clean:
	cd /Users/jose/Documents/GitHub/STFC/src/eigen_build_dir/unsupported/test && $(CMAKE_COMMAND) -P CMakeFiles/special_packetmath.dir/cmake_clean.cmake
.PHONY : unsupported/test/CMakeFiles/special_packetmath.dir/clean

unsupported/test/CMakeFiles/special_packetmath.dir/depend:
	cd /Users/jose/Documents/GitHub/STFC/src/eigen_build_dir && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/jose/Documents/GitHub/STFC/src/eigen /Users/jose/Documents/GitHub/STFC/src/eigen/unsupported/test /Users/jose/Documents/GitHub/STFC/src/eigen_build_dir /Users/jose/Documents/GitHub/STFC/src/eigen_build_dir/unsupported/test /Users/jose/Documents/GitHub/STFC/src/eigen_build_dir/unsupported/test/CMakeFiles/special_packetmath.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : unsupported/test/CMakeFiles/special_packetmath.dir/depend

