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
include unsupported/test/CMakeFiles/polynomialsolver_12.dir/depend.make

# Include the progress variables for this target.
include unsupported/test/CMakeFiles/polynomialsolver_12.dir/progress.make

# Include the compile flags for this target's objects.
include unsupported/test/CMakeFiles/polynomialsolver_12.dir/flags.make

unsupported/test/CMakeFiles/polynomialsolver_12.dir/polynomialsolver.cpp.o: unsupported/test/CMakeFiles/polynomialsolver_12.dir/flags.make
unsupported/test/CMakeFiles/polynomialsolver_12.dir/polynomialsolver.cpp.o: /Users/jose/Documents/GitHub/STFC/src/eigen/unsupported/test/polynomialsolver.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/jose/Documents/GitHub/STFC/src/eigen_build_dir/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object unsupported/test/CMakeFiles/polynomialsolver_12.dir/polynomialsolver.cpp.o"
	cd /Users/jose/Documents/GitHub/STFC/src/eigen_build_dir/unsupported/test && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/polynomialsolver_12.dir/polynomialsolver.cpp.o -c /Users/jose/Documents/GitHub/STFC/src/eigen/unsupported/test/polynomialsolver.cpp

unsupported/test/CMakeFiles/polynomialsolver_12.dir/polynomialsolver.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/polynomialsolver_12.dir/polynomialsolver.cpp.i"
	cd /Users/jose/Documents/GitHub/STFC/src/eigen_build_dir/unsupported/test && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/jose/Documents/GitHub/STFC/src/eigen/unsupported/test/polynomialsolver.cpp > CMakeFiles/polynomialsolver_12.dir/polynomialsolver.cpp.i

unsupported/test/CMakeFiles/polynomialsolver_12.dir/polynomialsolver.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/polynomialsolver_12.dir/polynomialsolver.cpp.s"
	cd /Users/jose/Documents/GitHub/STFC/src/eigen_build_dir/unsupported/test && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/jose/Documents/GitHub/STFC/src/eigen/unsupported/test/polynomialsolver.cpp -o CMakeFiles/polynomialsolver_12.dir/polynomialsolver.cpp.s

# Object files for target polynomialsolver_12
polynomialsolver_12_OBJECTS = \
"CMakeFiles/polynomialsolver_12.dir/polynomialsolver.cpp.o"

# External object files for target polynomialsolver_12
polynomialsolver_12_EXTERNAL_OBJECTS =

unsupported/test/polynomialsolver_12: unsupported/test/CMakeFiles/polynomialsolver_12.dir/polynomialsolver.cpp.o
unsupported/test/polynomialsolver_12: unsupported/test/CMakeFiles/polynomialsolver_12.dir/build.make
unsupported/test/polynomialsolver_12: unsupported/test/CMakeFiles/polynomialsolver_12.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/jose/Documents/GitHub/STFC/src/eigen_build_dir/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable polynomialsolver_12"
	cd /Users/jose/Documents/GitHub/STFC/src/eigen_build_dir/unsupported/test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/polynomialsolver_12.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
unsupported/test/CMakeFiles/polynomialsolver_12.dir/build: unsupported/test/polynomialsolver_12

.PHONY : unsupported/test/CMakeFiles/polynomialsolver_12.dir/build

unsupported/test/CMakeFiles/polynomialsolver_12.dir/clean:
	cd /Users/jose/Documents/GitHub/STFC/src/eigen_build_dir/unsupported/test && $(CMAKE_COMMAND) -P CMakeFiles/polynomialsolver_12.dir/cmake_clean.cmake
.PHONY : unsupported/test/CMakeFiles/polynomialsolver_12.dir/clean

unsupported/test/CMakeFiles/polynomialsolver_12.dir/depend:
	cd /Users/jose/Documents/GitHub/STFC/src/eigen_build_dir && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/jose/Documents/GitHub/STFC/src/eigen /Users/jose/Documents/GitHub/STFC/src/eigen/unsupported/test /Users/jose/Documents/GitHub/STFC/src/eigen_build_dir /Users/jose/Documents/GitHub/STFC/src/eigen_build_dir/unsupported/test /Users/jose/Documents/GitHub/STFC/src/eigen_build_dir/unsupported/test/CMakeFiles/polynomialsolver_12.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : unsupported/test/CMakeFiles/polynomialsolver_12.dir/depend

