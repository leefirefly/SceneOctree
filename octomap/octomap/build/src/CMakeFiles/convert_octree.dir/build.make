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
include src/CMakeFiles/convert_octree.dir/depend.make

# Include the progress variables for this target.
include src/CMakeFiles/convert_octree.dir/progress.make

# Include the compile flags for this target's objects.
include src/CMakeFiles/convert_octree.dir/flags.make

src/CMakeFiles/convert_octree.dir/convert_octree.cpp.o: src/CMakeFiles/convert_octree.dir/flags.make
src/CMakeFiles/convert_octree.dir/convert_octree.cpp.o: ../src/convert_octree.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/lee_firefly/SceneOcTree/octomap/octomap/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/CMakeFiles/convert_octree.dir/convert_octree.cpp.o"
	cd /home/lee_firefly/SceneOcTree/octomap/octomap/build/src && g++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/convert_octree.dir/convert_octree.cpp.o -c /home/lee_firefly/SceneOcTree/octomap/octomap/src/convert_octree.cpp

src/CMakeFiles/convert_octree.dir/convert_octree.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/convert_octree.dir/convert_octree.cpp.i"
	cd /home/lee_firefly/SceneOcTree/octomap/octomap/build/src && g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/lee_firefly/SceneOcTree/octomap/octomap/src/convert_octree.cpp > CMakeFiles/convert_octree.dir/convert_octree.cpp.i

src/CMakeFiles/convert_octree.dir/convert_octree.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/convert_octree.dir/convert_octree.cpp.s"
	cd /home/lee_firefly/SceneOcTree/octomap/octomap/build/src && g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/lee_firefly/SceneOcTree/octomap/octomap/src/convert_octree.cpp -o CMakeFiles/convert_octree.dir/convert_octree.cpp.s

src/CMakeFiles/convert_octree.dir/convert_octree.cpp.o.requires:

.PHONY : src/CMakeFiles/convert_octree.dir/convert_octree.cpp.o.requires

src/CMakeFiles/convert_octree.dir/convert_octree.cpp.o.provides: src/CMakeFiles/convert_octree.dir/convert_octree.cpp.o.requires
	$(MAKE) -f src/CMakeFiles/convert_octree.dir/build.make src/CMakeFiles/convert_octree.dir/convert_octree.cpp.o.provides.build
.PHONY : src/CMakeFiles/convert_octree.dir/convert_octree.cpp.o.provides

src/CMakeFiles/convert_octree.dir/convert_octree.cpp.o.provides.build: src/CMakeFiles/convert_octree.dir/convert_octree.cpp.o


# Object files for target convert_octree
convert_octree_OBJECTS = \
"CMakeFiles/convert_octree.dir/convert_octree.cpp.o"

# External object files for target convert_octree
convert_octree_EXTERNAL_OBJECTS =

../bin/convert_octree: src/CMakeFiles/convert_octree.dir/convert_octree.cpp.o
../bin/convert_octree: src/CMakeFiles/convert_octree.dir/build.make
../bin/convert_octree: ../lib/liboctomap.so.1.9.0
../bin/convert_octree: ../lib/liboctomath.so.1.9.0
../bin/convert_octree: src/CMakeFiles/convert_octree.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/lee_firefly/SceneOcTree/octomap/octomap/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../bin/convert_octree"
	cd /home/lee_firefly/SceneOcTree/octomap/octomap/build/src && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/convert_octree.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/CMakeFiles/convert_octree.dir/build: ../bin/convert_octree

.PHONY : src/CMakeFiles/convert_octree.dir/build

src/CMakeFiles/convert_octree.dir/requires: src/CMakeFiles/convert_octree.dir/convert_octree.cpp.o.requires

.PHONY : src/CMakeFiles/convert_octree.dir/requires

src/CMakeFiles/convert_octree.dir/clean:
	cd /home/lee_firefly/SceneOcTree/octomap/octomap/build/src && $(CMAKE_COMMAND) -P CMakeFiles/convert_octree.dir/cmake_clean.cmake
.PHONY : src/CMakeFiles/convert_octree.dir/clean

src/CMakeFiles/convert_octree.dir/depend:
	cd /home/lee_firefly/SceneOcTree/octomap/octomap/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/lee_firefly/SceneOcTree/octomap/octomap /home/lee_firefly/SceneOcTree/octomap/octomap/src /home/lee_firefly/SceneOcTree/octomap/octomap/build /home/lee_firefly/SceneOcTree/octomap/octomap/build/src /home/lee_firefly/SceneOcTree/octomap/octomap/build/src/CMakeFiles/convert_octree.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/CMakeFiles/convert_octree.dir/depend
