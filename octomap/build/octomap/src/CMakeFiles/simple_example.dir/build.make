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
CMAKE_SOURCE_DIR = /home/lee_firefly/octomap

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/lee_firefly/octomap/build

# Include any dependencies generated for this target.
include octomap/src/CMakeFiles/simple_example.dir/depend.make

# Include the progress variables for this target.
include octomap/src/CMakeFiles/simple_example.dir/progress.make

# Include the compile flags for this target's objects.
include octomap/src/CMakeFiles/simple_example.dir/flags.make

octomap/src/CMakeFiles/simple_example.dir/simple_example.cpp.o: octomap/src/CMakeFiles/simple_example.dir/flags.make
octomap/src/CMakeFiles/simple_example.dir/simple_example.cpp.o: ../octomap/src/simple_example.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/lee_firefly/octomap/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object octomap/src/CMakeFiles/simple_example.dir/simple_example.cpp.o"
	cd /home/lee_firefly/octomap/build/octomap/src && g++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/simple_example.dir/simple_example.cpp.o -c /home/lee_firefly/octomap/octomap/src/simple_example.cpp

octomap/src/CMakeFiles/simple_example.dir/simple_example.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/simple_example.dir/simple_example.cpp.i"
	cd /home/lee_firefly/octomap/build/octomap/src && g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/lee_firefly/octomap/octomap/src/simple_example.cpp > CMakeFiles/simple_example.dir/simple_example.cpp.i

octomap/src/CMakeFiles/simple_example.dir/simple_example.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/simple_example.dir/simple_example.cpp.s"
	cd /home/lee_firefly/octomap/build/octomap/src && g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/lee_firefly/octomap/octomap/src/simple_example.cpp -o CMakeFiles/simple_example.dir/simple_example.cpp.s

octomap/src/CMakeFiles/simple_example.dir/simple_example.cpp.o.requires:

.PHONY : octomap/src/CMakeFiles/simple_example.dir/simple_example.cpp.o.requires

octomap/src/CMakeFiles/simple_example.dir/simple_example.cpp.o.provides: octomap/src/CMakeFiles/simple_example.dir/simple_example.cpp.o.requires
	$(MAKE) -f octomap/src/CMakeFiles/simple_example.dir/build.make octomap/src/CMakeFiles/simple_example.dir/simple_example.cpp.o.provides.build
.PHONY : octomap/src/CMakeFiles/simple_example.dir/simple_example.cpp.o.provides

octomap/src/CMakeFiles/simple_example.dir/simple_example.cpp.o.provides.build: octomap/src/CMakeFiles/simple_example.dir/simple_example.cpp.o


# Object files for target simple_example
simple_example_OBJECTS = \
"CMakeFiles/simple_example.dir/simple_example.cpp.o"

# External object files for target simple_example
simple_example_EXTERNAL_OBJECTS =

../bin/simple_example: octomap/src/CMakeFiles/simple_example.dir/simple_example.cpp.o
../bin/simple_example: octomap/src/CMakeFiles/simple_example.dir/build.make
../bin/simple_example: ../lib/liboctomap.so.1.9.0
../bin/simple_example: ../lib/liboctomath.so.1.9.0
../bin/simple_example: octomap/src/CMakeFiles/simple_example.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/lee_firefly/octomap/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../../bin/simple_example"
	cd /home/lee_firefly/octomap/build/octomap/src && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/simple_example.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
octomap/src/CMakeFiles/simple_example.dir/build: ../bin/simple_example

.PHONY : octomap/src/CMakeFiles/simple_example.dir/build

octomap/src/CMakeFiles/simple_example.dir/requires: octomap/src/CMakeFiles/simple_example.dir/simple_example.cpp.o.requires

.PHONY : octomap/src/CMakeFiles/simple_example.dir/requires

octomap/src/CMakeFiles/simple_example.dir/clean:
	cd /home/lee_firefly/octomap/build/octomap/src && $(CMAKE_COMMAND) -P CMakeFiles/simple_example.dir/cmake_clean.cmake
.PHONY : octomap/src/CMakeFiles/simple_example.dir/clean

octomap/src/CMakeFiles/simple_example.dir/depend:
	cd /home/lee_firefly/octomap/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/lee_firefly/octomap /home/lee_firefly/octomap/octomap/src /home/lee_firefly/octomap/build /home/lee_firefly/octomap/build/octomap/src /home/lee_firefly/octomap/build/octomap/src/CMakeFiles/simple_example.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : octomap/src/CMakeFiles/simple_example.dir/depend

