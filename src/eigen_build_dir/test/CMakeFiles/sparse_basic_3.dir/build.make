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

# Include any dependencies generated for this target.
include test/CMakeFiles/sparse_basic_3.dir/depend.make

# Include the progress variables for this target.
include test/CMakeFiles/sparse_basic_3.dir/progress.make

# Include the compile flags for this target's objects.
include test/CMakeFiles/sparse_basic_3.dir/flags.make

test/CMakeFiles/sparse_basic_3.dir/sparse_basic.cpp.o: test/CMakeFiles/sparse_basic_3.dir/flags.make
test/CMakeFiles/sparse_basic_3.dir/sparse_basic.cpp.o: /Users/jose/Documents/GitHub/STFC/src/eigen/test/sparse_basic.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/jose/Documents/GitHub/STFC/src/eigen_build_dir/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object test/CMakeFiles/sparse_basic_3.dir/sparse_basic.cpp.o"
	cd /Users/jose/Documents/GitHub/STFC/src/eigen_build_dir/test && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/sparse_basic_3.dir/sparse_basic.cpp.o -c /Users/jose/Documents/GitHub/STFC/src/eigen/test/sparse_basic.cpp

test/CMakeFiles/sparse_basic_3.dir/sparse_basic.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sparse_basic_3.dir/sparse_basic.cpp.i"
	cd /Users/jose/Documents/GitHub/STFC/src/eigen_build_dir/test && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/jose/Documents/GitHub/STFC/src/eigen/test/sparse_basic.cpp > CMakeFiles/sparse_basic_3.dir/sparse_basic.cpp.i

test/CMakeFiles/sparse_basic_3.dir/sparse_basic.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sparse_basic_3.dir/sparse_basic.cpp.s"
	cd /Users/jose/Documents/GitHub/STFC/src/eigen_build_dir/test && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/jose/Documents/GitHub/STFC/src/eigen/test/sparse_basic.cpp -o CMakeFiles/sparse_basic_3.dir/sparse_basic.cpp.s

# Object files for target sparse_basic_3
sparse_basic_3_OBJECTS = \
"CMakeFiles/sparse_basic_3.dir/sparse_basic.cpp.o"

# External object files for target sparse_basic_3
sparse_basic_3_EXTERNAL_OBJECTS =

test/sparse_basic_3: test/CMakeFiles/sparse_basic_3.dir/sparse_basic.cpp.o
test/sparse_basic_3: test/CMakeFiles/sparse_basic_3.dir/build.make
test/sparse_basic_3: test/CMakeFiles/sparse_basic_3.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/jose/Documents/GitHub/STFC/src/eigen_build_dir/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable sparse_basic_3"
	cd /Users/jose/Documents/GitHub/STFC/src/eigen_build_dir/test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/sparse_basic_3.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
test/CMakeFiles/sparse_basic_3.dir/build: test/sparse_basic_3

.PHONY : test/CMakeFiles/sparse_basic_3.dir/build

test/CMakeFiles/sparse_basic_3.dir/clean:
	cd /Users/jose/Documents/GitHub/STFC/src/eigen_build_dir/test && $(CMAKE_COMMAND) -P CMakeFiles/sparse_basic_3.dir/cmake_clean.cmake
.PHONY : test/CMakeFiles/sparse_basic_3.dir/clean

test/CMakeFiles/sparse_basic_3.dir/depend:
	cd /Users/jose/Documents/GitHub/STFC/src/eigen_build_dir && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/jose/Documents/GitHub/STFC/src/eigen /Users/jose/Documents/GitHub/STFC/src/eigen/test /Users/jose/Documents/GitHub/STFC/src/eigen_build_dir /Users/jose/Documents/GitHub/STFC/src/eigen_build_dir/test /Users/jose/Documents/GitHub/STFC/src/eigen_build_dir/test/CMakeFiles/sparse_basic_3.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : test/CMakeFiles/sparse_basic_3.dir/depend

