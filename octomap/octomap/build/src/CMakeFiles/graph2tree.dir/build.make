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
CMAKE_SOURCE_DIR = /home/lee_firefly/SceneOcTree/octomap/octomap

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/lee_firefly/SceneOcTree/octomap/octomap/build

# Include any dependencies generated for this target.
include src/CMakeFiles/graph2tree.dir/depend.make

# Include the progress variables for this target.
include src/CMakeFiles/graph2tree.dir/progress.make

# Include the compile flags for this target's objects.
include src/CMakeFiles/graph2tree.dir/flags.make

src/CMakeFiles/graph2tree.dir/graph2tree.cpp.o: src/CMakeFiles/graph2tree.dir/flags.make
src/CMakeFiles/graph2tree.dir/graph2tree.cpp.o: ../src/graph2tree.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/lee_firefly/SceneOcTree/octomap/octomap/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/CMakeFiles/graph2tree.dir/graph2tree.cpp.o"
	cd /home/lee_firefly/SceneOcTree/octomap/octomap/build/src && g++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/graph2tree.dir/graph2tree.cpp.o -c /home/lee_firefly/SceneOcTree/octomap/octomap/src/graph2tree.cpp

src/CMakeFiles/graph2tree.dir/graph2tree.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/graph2tree.dir/graph2tree.cpp.i"
	cd /home/lee_firefly/SceneOcTree/octomap/octomap/build/src && g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/lee_firefly/SceneOcTree/octomap/octomap/src/graph2tree.cpp > CMakeFiles/graph2tree.dir/graph2tree.cpp.i

src/CMakeFiles/graph2tree.dir/graph2tree.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/graph2tree.dir/graph2tree.cpp.s"
	cd /home/lee_firefly/SceneOcTree/octomap/octomap/build/src && g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/lee_firefly/SceneOcTree/octomap/octomap/src/graph2tree.cpp -o CMakeFiles/graph2tree.dir/graph2tree.cpp.s

src/CMakeFiles/graph2tree.dir/graph2tree.cpp.o.requires:

.PHONY : src/CMakeFiles/graph2tree.dir/graph2tree.cpp.o.requires

src/CMakeFiles/graph2tree.dir/graph2tree.cpp.o.provides: src/CMakeFiles/graph2tree.dir/graph2tree.cpp.o.requires
	$(MAKE) -f src/CMakeFiles/graph2tree.dir/build.make src/CMakeFiles/graph2tree.dir/graph2tree.cpp.o.provides.build
.PHONY : src/CMakeFiles/graph2tree.dir/graph2tree.cpp.o.provides

src/CMakeFiles/graph2tree.dir/graph2tree.cpp.o.provides.build: src/CMakeFiles/graph2tree.dir/graph2tree.cpp.o


# Object files for target graph2tree
graph2tree_OBJECTS = \
"CMakeFiles/graph2tree.dir/graph2tree.cpp.o"

# External object files for target graph2tree
graph2tree_EXTERNAL_OBJECTS =

../bin/graph2tree: src/CMakeFiles/graph2tree.dir/graph2tree.cpp.o
../bin/graph2tree: src/CMakeFiles/graph2tree.dir/build.make
../bin/graph2tree: ../lib/liboctomap.so.1.9.0
../bin/graph2tree: ../lib/liboctomath.so.1.9.0
../bin/graph2tree: src/CMakeFiles/graph2tree.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/lee_firefly/SceneOcTree/octomap/octomap/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../bin/graph2tree"
	cd /home/lee_firefly/SceneOcTree/octomap/octomap/build/src && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/graph2tree.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/CMakeFiles/graph2tree.dir/build: ../bin/graph2tree

.PHONY : src/CMakeFiles/graph2tree.dir/build

src/CMakeFiles/graph2tree.dir/requires: src/CMakeFiles/graph2tree.dir/graph2tree.cpp.o.requires

.PHONY : src/CMakeFiles/graph2tree.dir/requires

src/CMakeFiles/graph2tree.dir/clean:
	cd /home/lee_firefly/SceneOcTree/octomap/octomap/build/src && $(CMAKE_COMMAND) -P CMakeFiles/graph2tree.dir/cmake_clean.cmake
.PHONY : src/CMakeFiles/graph2tree.dir/clean

src/CMakeFiles/graph2tree.dir/depend:
	cd /home/lee_firefly/SceneOcTree/octomap/octomap/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/lee_firefly/SceneOcTree/octomap/octomap /home/lee_firefly/SceneOcTree/octomap/octomap/src /home/lee_firefly/SceneOcTree/octomap/octomap/build /home/lee_firefly/SceneOcTree/octomap/octomap/build/src /home/lee_firefly/SceneOcTree/octomap/octomap/build/src/CMakeFiles/graph2tree.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/CMakeFiles/graph2tree.dir/depend

