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

# Utility rule file for doc-eigen-prerequisites.

# Include the progress variables for this target.
include doc/CMakeFiles/doc-eigen-prerequisites.dir/progress.make

doc/CMakeFiles/doc-eigen-prerequisites:
	cd /Users/jose/Documents/GitHub/STFC/src/eigen_build_dir/doc && /usr/local/Cellar/cmake/3.19.2/bin/cmake -E make_directory /Users/jose/Documents/GitHub/STFC/src/eigen_build_dir/doc/html/
	cd /Users/jose/Documents/GitHub/STFC/src/eigen_build_dir/doc && /usr/local/Cellar/cmake/3.19.2/bin/cmake -E copy /Users/jose/Documents/GitHub/STFC/src/eigen/doc/eigen_navtree_hacks.js /Users/jose/Documents/GitHub/STFC/src/eigen_build_dir/doc/html/
	cd /Users/jose/Documents/GitHub/STFC/src/eigen_build_dir/doc && /usr/local/Cellar/cmake/3.19.2/bin/cmake -E copy /Users/jose/Documents/GitHub/STFC/src/eigen/doc/Eigen_Silly_Professor_64x64.png /Users/jose/Documents/GitHub/STFC/src/eigen_build_dir/doc/html/
	cd /Users/jose/Documents/GitHub/STFC/src/eigen_build_dir/doc && /usr/local/Cellar/cmake/3.19.2/bin/cmake -E copy /Users/jose/Documents/GitHub/STFC/src/eigen/doc/ftv2pnode.png /Users/jose/Documents/GitHub/STFC/src/eigen_build_dir/doc/html/
	cd /Users/jose/Documents/GitHub/STFC/src/eigen_build_dir/doc && /usr/local/Cellar/cmake/3.19.2/bin/cmake -E copy /Users/jose/Documents/GitHub/STFC/src/eigen/doc/ftv2node.png /Users/jose/Documents/GitHub/STFC/src/eigen_build_dir/doc/html/
	cd /Users/jose/Documents/GitHub/STFC/src/eigen_build_dir/doc && /usr/local/Cellar/cmake/3.19.2/bin/cmake -E copy /Users/jose/Documents/GitHub/STFC/src/eigen/doc/AsciiQuickReference.txt /Users/jose/Documents/GitHub/STFC/src/eigen_build_dir/doc/html/

doc-eigen-prerequisites: doc/CMakeFiles/doc-eigen-prerequisites
doc-eigen-prerequisites: doc/CMakeFiles/doc-eigen-prerequisites.dir/build.make

.PHONY : doc-eigen-prerequisites

# Rule to build all files generated by this target.
doc/CMakeFiles/doc-eigen-prerequisites.dir/build: doc-eigen-prerequisites

.PHONY : doc/CMakeFiles/doc-eigen-prerequisites.dir/build

doc/CMakeFiles/doc-eigen-prerequisites.dir/clean:
	cd /Users/jose/Documents/GitHub/STFC/src/eigen_build_dir/doc && $(CMAKE_COMMAND) -P CMakeFiles/doc-eigen-prerequisites.dir/cmake_clean.cmake
.PHONY : doc/CMakeFiles/doc-eigen-prerequisites.dir/clean

doc/CMakeFiles/doc-eigen-prerequisites.dir/depend:
	cd /Users/jose/Documents/GitHub/STFC/src/eigen_build_dir && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/jose/Documents/GitHub/STFC/src/eigen /Users/jose/Documents/GitHub/STFC/src/eigen/doc /Users/jose/Documents/GitHub/STFC/src/eigen_build_dir /Users/jose/Documents/GitHub/STFC/src/eigen_build_dir/doc /Users/jose/Documents/GitHub/STFC/src/eigen_build_dir/doc/CMakeFiles/doc-eigen-prerequisites.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : doc/CMakeFiles/doc-eigen-prerequisites.dir/depend

