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
include src/CMakeFiles/eval_octree_accuracy.dir/depend.make

# Include the progress variables for this target.
include src/CMakeFiles/eval_octree_accuracy.dir/progress.make

# Include the compile flags for this target's objects.
include src/CMakeFiles/eval_octree_accuracy.dir/flags.make

src/CMakeFiles/eval_octree_accuracy.dir/eval_octree_accuracy.cpp.o: src/CMakeFiles/eval_octree_accuracy.dir/flags.make
src/CMakeFiles/eval_octree_accuracy.dir/eval_octree_accuracy.cpp.o: ../src/eval_octree_accuracy.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/lee_firefly/SceneOcTree/octomap/octomap/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/CMakeFiles/eval_octree_accuracy.dir/eval_octree_accuracy.cpp.o"
	cd /home/lee_firefly/SceneOcTree/octomap/octomap/build/src && g++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/eval_octree_accuracy.dir/eval_octree_accuracy.cpp.o -c /home/lee_firefly/SceneOcTree/octomap/octomap/src/eval_octree_accuracy.cpp

src/CMakeFiles/eval_octree_accuracy.dir/eval_octree_accuracy.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/eval_octree_accuracy.dir/eval_octree_accuracy.cpp.i"
	cd /home/lee_firefly/SceneOcTree/octomap/octomap/build/src && g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/lee_firefly/SceneOcTree/octomap/octomap/src/eval_octree_accuracy.cpp > CMakeFiles/eval_octree_accuracy.dir/eval_octree_accuracy.cpp.i

src/CMakeFiles/eval_octree_accuracy.dir/eval_octree_accuracy.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/eval_octree_accuracy.dir/eval_octree_accuracy.cpp.s"
	cd /home/lee_firefly/SceneOcTree/octomap/octomap/build/src && g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/lee_firefly/SceneOcTree/octomap/octomap/src/eval_octree_accuracy.cpp -o CMakeFiles/eval_octree_accuracy.dir/eval_octree_accuracy.cpp.s

src/CMakeFiles/eval_octree_accuracy.dir/eval_octree_accuracy.cpp.o.requires:

.PHONY : src/CMakeFiles/eval_octree_accuracy.dir/eval_octree_accuracy.cpp.o.requires

src/CMakeFiles/eval_octree_accuracy.dir/eval_octree_accuracy.cpp.o.provides: src/CMakeFiles/eval_octree_accuracy.dir/eval_octree_accuracy.cpp.o.requires
	$(MAKE) -f src/CMakeFiles/eval_octree_accuracy.dir/build.make src/CMakeFiles/eval_octree_accuracy.dir/eval_octree_accuracy.cpp.o.provides.build
.PHONY : src/CMakeFiles/eval_octree_accuracy.dir/eval_octree_accuracy.cpp.o.provides

src/CMakeFiles/eval_octree_accuracy.dir/eval_octree_accuracy.cpp.o.provides.build: src/CMakeFiles/eval_octree_accuracy.dir/eval_octree_accuracy.cpp.o


# Object files for target eval_octree_accuracy
eval_octree_accuracy_OBJECTS = \
"CMakeFiles/eval_octree_accuracy.dir/eval_octree_accuracy.cpp.o"

# External object files for target eval_octree_accuracy
eval_octree_accuracy_EXTERNAL_OBJECTS =

../bin/eval_octree_accuracy: src/CMakeFiles/eval_octree_accuracy.dir/eval_octree_accuracy.cpp.o
../bin/eval_octree_accuracy: src/CMakeFiles/eval_octree_accuracy.dir/build.make
../bin/eval_octree_accuracy: ../lib/liboctomap.so.1.9.0
../bin/eval_octree_accuracy: ../lib/liboctomath.so.1.9.0
../bin/eval_octree_accuracy: src/CMakeFiles/eval_octree_accuracy.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/lee_firefly/SceneOcTree/octomap/octomap/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../bin/eval_octree_accuracy"
	cd /home/lee_firefly/SceneOcTree/octomap/octomap/build/src && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/eval_octree_accuracy.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/CMakeFiles/eval_octree_accuracy.dir/build: ../bin/eval_octree_accuracy

.PHONY : src/CMakeFiles/eval_octree_accuracy.dir/build

src/CMakeFiles/eval_octree_accuracy.dir/requires: src/CMakeFiles/eval_octree_accuracy.dir/eval_octree_accuracy.cpp.o.requires

.PHONY : src/CMakeFiles/eval_octree_accuracy.dir/requires

src/CMakeFiles/eval_octree_accuracy.dir/clean:
	cd /home/lee_firefly/SceneOcTree/octomap/octomap/build/src && $(CMAKE_COMMAND) -P CMakeFiles/eval_octree_accuracy.dir/cmake_clean.cmake
.PHONY : src/CMakeFiles/eval_octree_accuracy.dir/clean

src/CMakeFiles/eval_octree_accuracy.dir/depend:
	cd /home/lee_firefly/SceneOcTree/octomap/octomap/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/lee_firefly/SceneOcTree/octomap/octomap /home/lee_firefly/SceneOcTree/octomap/octomap/src /home/lee_firefly/SceneOcTree/octomap/octomap/build /home/lee_firefly/SceneOcTree/octomap/octomap/build/src /home/lee_firefly/SceneOcTree/octomap/octomap/build/src/CMakeFiles/eval_octree_accuracy.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/CMakeFiles/eval_octree_accuracy.dir/depend

