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
include doc/examples/CMakeFiles/TemplateKeyword_flexible.dir/depend.make

# Include the progress variables for this target.
include doc/examples/CMakeFiles/TemplateKeyword_flexible.dir/progress.make

# Include the compile flags for this target's objects.
include doc/examples/CMakeFiles/TemplateKeyword_flexible.dir/flags.make

doc/examples/CMakeFiles/TemplateKeyword_flexible.dir/TemplateKeyword_flexible.cpp.o: doc/examples/CMakeFiles/TemplateKeyword_flexible.dir/flags.make
doc/examples/CMakeFiles/TemplateKeyword_flexible.dir/TemplateKeyword_flexible.cpp.o: /Users/jose/Documents/GitHub/STFC/src/eigen/doc/examples/TemplateKeyword_flexible.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/jose/Documents/GitHub/STFC/src/eigen_build_dir/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object doc/examples/CMakeFiles/TemplateKeyword_flexible.dir/TemplateKeyword_flexible.cpp.o"
	cd /Users/jose/Documents/GitHub/STFC/src/eigen_build_dir/doc/examples && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/TemplateKeyword_flexible.dir/TemplateKeyword_flexible.cpp.o -c /Users/jose/Documents/GitHub/STFC/src/eigen/doc/examples/TemplateKeyword_flexible.cpp

doc/examples/CMakeFiles/TemplateKeyword_flexible.dir/TemplateKeyword_flexible.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/TemplateKeyword_flexible.dir/TemplateKeyword_flexible.cpp.i"
	cd /Users/jose/Documents/GitHub/STFC/src/eigen_build_dir/doc/examples && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/jose/Documents/GitHub/STFC/src/eigen/doc/examples/TemplateKeyword_flexible.cpp > CMakeFiles/TemplateKeyword_flexible.dir/TemplateKeyword_flexible.cpp.i

doc/examples/CMakeFiles/TemplateKeyword_flexible.dir/TemplateKeyword_flexible.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/TemplateKeyword_flexible.dir/TemplateKeyword_flexible.cpp.s"
	cd /Users/jose/Documents/GitHub/STFC/src/eigen_build_dir/doc/examples && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/jose/Documents/GitHub/STFC/src/eigen/doc/examples/TemplateKeyword_flexible.cpp -o CMakeFiles/TemplateKeyword_flexible.dir/TemplateKeyword_flexible.cpp.s

# Object files for target TemplateKeyword_flexible
TemplateKeyword_flexible_OBJECTS = \
"CMakeFiles/TemplateKeyword_flexible.dir/TemplateKeyword_flexible.cpp.o"

# External object files for target TemplateKeyword_flexible
TemplateKeyword_flexible_EXTERNAL_OBJECTS =

doc/examples/TemplateKeyword_flexible: doc/examples/CMakeFiles/TemplateKeyword_flexible.dir/TemplateKeyword_flexible.cpp.o
doc/examples/TemplateKeyword_flexible: doc/examples/CMakeFiles/TemplateKeyword_flexible.dir/build.make
doc/examples/TemplateKeyword_flexible: doc/examples/CMakeFiles/TemplateKeyword_flexible.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/jose/Documents/GitHub/STFC/src/eigen_build_dir/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable TemplateKeyword_flexible"
	cd /Users/jose/Documents/GitHub/STFC/src/eigen_build_dir/doc/examples && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/TemplateKeyword_flexible.dir/link.txt --verbose=$(VERBOSE)
	cd /Users/jose/Documents/GitHub/STFC/src/eigen_build_dir/doc/examples && ./TemplateKeyword_flexible >/Users/jose/Documents/GitHub/STFC/src/eigen_build_dir/doc/examples/TemplateKeyword_flexible.out

# Rule to build all files generated by this target.
doc/examples/CMakeFiles/TemplateKeyword_flexible.dir/build: doc/examples/TemplateKeyword_flexible

.PHONY : doc/examples/CMakeFiles/TemplateKeyword_flexible.dir/build

doc/examples/CMakeFiles/TemplateKeyword_flexible.dir/clean:
	cd /Users/jose/Documents/GitHub/STFC/src/eigen_build_dir/doc/examples && $(CMAKE_COMMAND) -P CMakeFiles/TemplateKeyword_flexible.dir/cmake_clean.cmake
.PHONY : doc/examples/CMakeFiles/TemplateKeyword_flexible.dir/clean

doc/examples/CMakeFiles/TemplateKeyword_flexible.dir/depend:
	cd /Users/jose/Documents/GitHub/STFC/src/eigen_build_dir && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/jose/Documents/GitHub/STFC/src/eigen /Users/jose/Documents/GitHub/STFC/src/eigen/doc/examples /Users/jose/Documents/GitHub/STFC/src/eigen_build_dir /Users/jose/Documents/GitHub/STFC/src/eigen_build_dir/doc/examples /Users/jose/Documents/GitHub/STFC/src/eigen_build_dir/doc/examples/CMakeFiles/TemplateKeyword_flexible.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : doc/examples/CMakeFiles/TemplateKeyword_flexible.dir/depend

