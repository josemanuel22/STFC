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
include unsupported/test/CMakeFiles/matrix_exponential_5.dir/depend.make

# Include the progress variables for this target.
include unsupported/test/CMakeFiles/matrix_exponential_5.dir/progress.make

# Include the compile flags for this target's objects.
include unsupported/test/CMakeFiles/matrix_exponential_5.dir/flags.make

unsupported/test/CMakeFiles/matrix_exponential_5.dir/matrix_exponential.cpp.o: unsupported/test/CMakeFiles/matrix_exponential_5.dir/flags.make
unsupported/test/CMakeFiles/matrix_exponential_5.dir/matrix_exponential.cpp.o: /Users/jose/Documents/GitHub/STFC/src/eigen/unsupported/test/matrix_exponential.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/jose/Documents/GitHub/STFC/src/eigen_build_dir/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object unsupported/test/CMakeFiles/matrix_exponential_5.dir/matrix_exponential.cpp.o"
	cd /Users/jose/Documents/GitHub/STFC/src/eigen_build_dir/unsupported/test && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/matrix_exponential_5.dir/matrix_exponential.cpp.o -c /Users/jose/Documents/GitHub/STFC/src/eigen/unsupported/test/matrix_exponential.cpp

unsupported/test/CMakeFiles/matrix_exponential_5.dir/matrix_exponential.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/matrix_exponential_5.dir/matrix_exponential.cpp.i"
	cd /Users/jose/Documents/GitHub/STFC/src/eigen_build_dir/unsupported/test && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/jose/Documents/GitHub/STFC/src/eigen/unsupported/test/matrix_exponential.cpp > CMakeFiles/matrix_exponential_5.dir/matrix_exponential.cpp.i

unsupported/test/CMakeFiles/matrix_exponential_5.dir/matrix_exponential.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/matrix_exponential_5.dir/matrix_exponential.cpp.s"
	cd /Users/jose/Documents/GitHub/STFC/src/eigen_build_dir/unsupported/test && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/jose/Documents/GitHub/STFC/src/eigen/unsupported/test/matrix_exponential.cpp -o CMakeFiles/matrix_exponential_5.dir/matrix_exponential.cpp.s

# Object files for target matrix_exponential_5
matrix_exponential_5_OBJECTS = \
"CMakeFiles/matrix_exponential_5.dir/matrix_exponential.cpp.o"

# External object files for target matrix_exponential_5
matrix_exponential_5_EXTERNAL_OBJECTS =

unsupported/test/matrix_exponential_5: unsupported/test/CMakeFiles/matrix_exponential_5.dir/matrix_exponential.cpp.o
unsupported/test/matrix_exponential_5: unsupported/test/CMakeFiles/matrix_exponential_5.dir/build.make
unsupported/test/matrix_exponential_5: unsupported/test/CMakeFiles/matrix_exponential_5.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/jose/Documents/GitHub/STFC/src/eigen_build_dir/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable matrix_exponential_5"
	cd /Users/jose/Documents/GitHub/STFC/src/eigen_build_dir/unsupported/test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/matrix_exponential_5.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
unsupported/test/CMakeFiles/matrix_exponential_5.dir/build: unsupported/test/matrix_exponential_5

.PHONY : unsupported/test/CMakeFiles/matrix_exponential_5.dir/build

unsupported/test/CMakeFiles/matrix_exponential_5.dir/clean:
	cd /Users/jose/Documents/GitHub/STFC/src/eigen_build_dir/unsupported/test && $(CMAKE_COMMAND) -P CMakeFiles/matrix_exponential_5.dir/cmake_clean.cmake
.PHONY : unsupported/test/CMakeFiles/matrix_exponential_5.dir/clean

unsupported/test/CMakeFiles/matrix_exponential_5.dir/depend:
	cd /Users/jose/Documents/GitHub/STFC/src/eigen_build_dir && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/jose/Documents/GitHub/STFC/src/eigen /Users/jose/Documents/GitHub/STFC/src/eigen/unsupported/test /Users/jose/Documents/GitHub/STFC/src/eigen_build_dir /Users/jose/Documents/GitHub/STFC/src/eigen_build_dir/unsupported/test /Users/jose/Documents/GitHub/STFC/src/eigen_build_dir/unsupported/test/CMakeFiles/matrix_exponential_5.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : unsupported/test/CMakeFiles/matrix_exponential_5.dir/depend

