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
include failtest/CMakeFiles/ternary_1_ok.dir/depend.make

# Include the progress variables for this target.
include failtest/CMakeFiles/ternary_1_ok.dir/progress.make

# Include the compile flags for this target's objects.
include failtest/CMakeFiles/ternary_1_ok.dir/flags.make

failtest/CMakeFiles/ternary_1_ok.dir/ternary_1.cpp.o: failtest/CMakeFiles/ternary_1_ok.dir/flags.make
failtest/CMakeFiles/ternary_1_ok.dir/ternary_1.cpp.o: /Users/jose/Documents/GitHub/STFC/src/eigen/failtest/ternary_1.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/jose/Documents/GitHub/STFC/src/eigen_build_dir/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object failtest/CMakeFiles/ternary_1_ok.dir/ternary_1.cpp.o"
	cd /Users/jose/Documents/GitHub/STFC/src/eigen_build_dir/failtest && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ternary_1_ok.dir/ternary_1.cpp.o -c /Users/jose/Documents/GitHub/STFC/src/eigen/failtest/ternary_1.cpp

failtest/CMakeFiles/ternary_1_ok.dir/ternary_1.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ternary_1_ok.dir/ternary_1.cpp.i"
	cd /Users/jose/Documents/GitHub/STFC/src/eigen_build_dir/failtest && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/jose/Documents/GitHub/STFC/src/eigen/failtest/ternary_1.cpp > CMakeFiles/ternary_1_ok.dir/ternary_1.cpp.i

failtest/CMakeFiles/ternary_1_ok.dir/ternary_1.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ternary_1_ok.dir/ternary_1.cpp.s"
	cd /Users/jose/Documents/GitHub/STFC/src/eigen_build_dir/failtest && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/jose/Documents/GitHub/STFC/src/eigen/failtest/ternary_1.cpp -o CMakeFiles/ternary_1_ok.dir/ternary_1.cpp.s

# Object files for target ternary_1_ok
ternary_1_ok_OBJECTS = \
"CMakeFiles/ternary_1_ok.dir/ternary_1.cpp.o"

# External object files for target ternary_1_ok
ternary_1_ok_EXTERNAL_OBJECTS =

failtest/ternary_1_ok: failtest/CMakeFiles/ternary_1_ok.dir/ternary_1.cpp.o
failtest/ternary_1_ok: failtest/CMakeFiles/ternary_1_ok.dir/build.make
failtest/ternary_1_ok: failtest/CMakeFiles/ternary_1_ok.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/jose/Documents/GitHub/STFC/src/eigen_build_dir/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ternary_1_ok"
	cd /Users/jose/Documents/GitHub/STFC/src/eigen_build_dir/failtest && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ternary_1_ok.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
failtest/CMakeFiles/ternary_1_ok.dir/build: failtest/ternary_1_ok

.PHONY : failtest/CMakeFiles/ternary_1_ok.dir/build

failtest/CMakeFiles/ternary_1_ok.dir/clean:
	cd /Users/jose/Documents/GitHub/STFC/src/eigen_build_dir/failtest && $(CMAKE_COMMAND) -P CMakeFiles/ternary_1_ok.dir/cmake_clean.cmake
.PHONY : failtest/CMakeFiles/ternary_1_ok.dir/clean

failtest/CMakeFiles/ternary_1_ok.dir/depend:
	cd /Users/jose/Documents/GitHub/STFC/src/eigen_build_dir && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/jose/Documents/GitHub/STFC/src/eigen /Users/jose/Documents/GitHub/STFC/src/eigen/failtest /Users/jose/Documents/GitHub/STFC/src/eigen_build_dir /Users/jose/Documents/GitHub/STFC/src/eigen_build_dir/failtest /Users/jose/Documents/GitHub/STFC/src/eigen_build_dir/failtest/CMakeFiles/ternary_1_ok.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : failtest/CMakeFiles/ternary_1_ok.dir/depend

