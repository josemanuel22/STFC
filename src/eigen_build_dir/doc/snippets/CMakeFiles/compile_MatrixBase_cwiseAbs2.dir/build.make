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
include doc/snippets/CMakeFiles/compile_MatrixBase_cwiseAbs2.dir/depend.make

# Include the progress variables for this target.
include doc/snippets/CMakeFiles/compile_MatrixBase_cwiseAbs2.dir/progress.make

# Include the compile flags for this target's objects.
include doc/snippets/CMakeFiles/compile_MatrixBase_cwiseAbs2.dir/flags.make

doc/snippets/CMakeFiles/compile_MatrixBase_cwiseAbs2.dir/compile_MatrixBase_cwiseAbs2.cpp.o: doc/snippets/CMakeFiles/compile_MatrixBase_cwiseAbs2.dir/flags.make
doc/snippets/CMakeFiles/compile_MatrixBase_cwiseAbs2.dir/compile_MatrixBase_cwiseAbs2.cpp.o: doc/snippets/compile_MatrixBase_cwiseAbs2.cpp
doc/snippets/CMakeFiles/compile_MatrixBase_cwiseAbs2.dir/compile_MatrixBase_cwiseAbs2.cpp.o: /Users/jose/Documents/GitHub/STFC/src/eigen/doc/snippets/MatrixBase_cwiseAbs2.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/jose/Documents/GitHub/STFC/src/eigen_build_dir/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object doc/snippets/CMakeFiles/compile_MatrixBase_cwiseAbs2.dir/compile_MatrixBase_cwiseAbs2.cpp.o"
	cd /Users/jose/Documents/GitHub/STFC/src/eigen_build_dir/doc/snippets && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/compile_MatrixBase_cwiseAbs2.dir/compile_MatrixBase_cwiseAbs2.cpp.o -c /Users/jose/Documents/GitHub/STFC/src/eigen_build_dir/doc/snippets/compile_MatrixBase_cwiseAbs2.cpp

doc/snippets/CMakeFiles/compile_MatrixBase_cwiseAbs2.dir/compile_MatrixBase_cwiseAbs2.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/compile_MatrixBase_cwiseAbs2.dir/compile_MatrixBase_cwiseAbs2.cpp.i"
	cd /Users/jose/Documents/GitHub/STFC/src/eigen_build_dir/doc/snippets && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/jose/Documents/GitHub/STFC/src/eigen_build_dir/doc/snippets/compile_MatrixBase_cwiseAbs2.cpp > CMakeFiles/compile_MatrixBase_cwiseAbs2.dir/compile_MatrixBase_cwiseAbs2.cpp.i

doc/snippets/CMakeFiles/compile_MatrixBase_cwiseAbs2.dir/compile_MatrixBase_cwiseAbs2.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/compile_MatrixBase_cwiseAbs2.dir/compile_MatrixBase_cwiseAbs2.cpp.s"
	cd /Users/jose/Documents/GitHub/STFC/src/eigen_build_dir/doc/snippets && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/jose/Documents/GitHub/STFC/src/eigen_build_dir/doc/snippets/compile_MatrixBase_cwiseAbs2.cpp -o CMakeFiles/compile_MatrixBase_cwiseAbs2.dir/compile_MatrixBase_cwiseAbs2.cpp.s

# Object files for target compile_MatrixBase_cwiseAbs2
compile_MatrixBase_cwiseAbs2_OBJECTS = \
"CMakeFiles/compile_MatrixBase_cwiseAbs2.dir/compile_MatrixBase_cwiseAbs2.cpp.o"

# External object files for target compile_MatrixBase_cwiseAbs2
compile_MatrixBase_cwiseAbs2_EXTERNAL_OBJECTS =

doc/snippets/compile_MatrixBase_cwiseAbs2: doc/snippets/CMakeFiles/compile_MatrixBase_cwiseAbs2.dir/compile_MatrixBase_cwiseAbs2.cpp.o
doc/snippets/compile_MatrixBase_cwiseAbs2: doc/snippets/CMakeFiles/compile_MatrixBase_cwiseAbs2.dir/build.make
doc/snippets/compile_MatrixBase_cwiseAbs2: doc/snippets/CMakeFiles/compile_MatrixBase_cwiseAbs2.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/jose/Documents/GitHub/STFC/src/eigen_build_dir/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable compile_MatrixBase_cwiseAbs2"
	cd /Users/jose/Documents/GitHub/STFC/src/eigen_build_dir/doc/snippets && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/compile_MatrixBase_cwiseAbs2.dir/link.txt --verbose=$(VERBOSE)
	cd /Users/jose/Documents/GitHub/STFC/src/eigen_build_dir/doc/snippets && ./compile_MatrixBase_cwiseAbs2 >/Users/jose/Documents/GitHub/STFC/src/eigen_build_dir/doc/snippets/MatrixBase_cwiseAbs2.out

# Rule to build all files generated by this target.
doc/snippets/CMakeFiles/compile_MatrixBase_cwiseAbs2.dir/build: doc/snippets/compile_MatrixBase_cwiseAbs2

.PHONY : doc/snippets/CMakeFiles/compile_MatrixBase_cwiseAbs2.dir/build

doc/snippets/CMakeFiles/compile_MatrixBase_cwiseAbs2.dir/clean:
	cd /Users/jose/Documents/GitHub/STFC/src/eigen_build_dir/doc/snippets && $(CMAKE_COMMAND) -P CMakeFiles/compile_MatrixBase_cwiseAbs2.dir/cmake_clean.cmake
.PHONY : doc/snippets/CMakeFiles/compile_MatrixBase_cwiseAbs2.dir/clean

doc/snippets/CMakeFiles/compile_MatrixBase_cwiseAbs2.dir/depend:
	cd /Users/jose/Documents/GitHub/STFC/src/eigen_build_dir && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/jose/Documents/GitHub/STFC/src/eigen /Users/jose/Documents/GitHub/STFC/src/eigen/doc/snippets /Users/jose/Documents/GitHub/STFC/src/eigen_build_dir /Users/jose/Documents/GitHub/STFC/src/eigen_build_dir/doc/snippets /Users/jose/Documents/GitHub/STFC/src/eigen_build_dir/doc/snippets/CMakeFiles/compile_MatrixBase_cwiseAbs2.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : doc/snippets/CMakeFiles/compile_MatrixBase_cwiseAbs2.dir/depend

