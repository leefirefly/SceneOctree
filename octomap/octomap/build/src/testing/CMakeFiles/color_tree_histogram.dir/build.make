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
include src/testing/CMakeFiles/color_tree_histogram.dir/depend.make

# Include the progress variables for this target.
include src/testing/CMakeFiles/color_tree_histogram.dir/progress.make

# Include the compile flags for this target's objects.
include src/testing/CMakeFiles/color_tree_histogram.dir/flags.make

src/testing/CMakeFiles/color_tree_histogram.dir/color_tree_histogram.cpp.o: src/testing/CMakeFiles/color_tree_histogram.dir/flags.make
src/testing/CMakeFiles/color_tree_histogram.dir/color_tree_histogram.cpp.o: ../src/testing/color_tree_histogram.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/lee_firefly/SceneOcTree/octomap/octomap/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/testing/CMakeFiles/color_tree_histogram.dir/color_tree_histogram.cpp.o"
	cd /home/lee_firefly/SceneOcTree/octomap/octomap/build/src/testing && g++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/color_tree_histogram.dir/color_tree_histogram.cpp.o -c /home/lee_firefly/SceneOcTree/octomap/octomap/src/testing/color_tree_histogram.cpp

src/testing/CMakeFiles/color_tree_histogram.dir/color_tree_histogram.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/color_tree_histogram.dir/color_tree_histogram.cpp.i"
	cd /home/lee_firefly/SceneOcTree/octomap/octomap/build/src/testing && g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/lee_firefly/SceneOcTree/octomap/octomap/src/testing/color_tree_histogram.cpp > CMakeFiles/color_tree_histogram.dir/color_tree_histogram.cpp.i

src/testing/CMakeFiles/color_tree_histogram.dir/color_tree_histogram.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/color_tree_histogram.dir/color_tree_histogram.cpp.s"
	cd /home/lee_firefly/SceneOcTree/octomap/octomap/build/src/testing && g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/lee_firefly/SceneOcTree/octomap/octomap/src/testing/color_tree_histogram.cpp -o CMakeFiles/color_tree_histogram.dir/color_tree_histogram.cpp.s

src/testing/CMakeFiles/color_tree_histogram.dir/color_tree_histogram.cpp.o.requires:

.PHONY : src/testing/CMakeFiles/color_tree_histogram.dir/color_tree_histogram.cpp.o.requires

src/testing/CMakeFiles/color_tree_histogram.dir/color_tree_histogram.cpp.o.provides: src/testing/CMakeFiles/color_tree_histogram.dir/color_tree_histogram.cpp.o.requires
	$(MAKE) -f src/testing/CMakeFiles/color_tree_histogram.dir/build.make src/testing/CMakeFiles/color_tree_histogram.dir/color_tree_histogram.cpp.o.provides.build
.PHONY : src/testing/CMakeFiles/color_tree_histogram.dir/color_tree_histogram.cpp.o.provides

src/testing/CMakeFiles/color_tree_histogram.dir/color_tree_histogram.cpp.o.provides.build: src/testing/CMakeFiles/color_tree_histogram.dir/color_tree_histogram.cpp.o


# Object files for target color_tree_histogram
color_tree_histogram_OBJECTS = \
"CMakeFiles/color_tree_histogram.dir/color_tree_histogram.cpp.o"

# External object files for target color_tree_histogram
color_tree_histogram_EXTERNAL_OBJECTS =

../bin/color_tree_histogram: src/testing/CMakeFiles/color_tree_histogram.dir/color_tree_histogram.cpp.o
../bin/color_tree_histogram: src/testing/CMakeFiles/color_tree_histogram.dir/build.make
../bin/color_tree_histogram: ../lib/liboctomap.so.1.9.0
../bin/color_tree_histogram: ../lib/liboctomath.so.1.9.0
../bin/color_tree_histogram: src/testing/CMakeFiles/color_tree_histogram.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/lee_firefly/SceneOcTree/octomap/octomap/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../../bin/color_tree_histogram"
	cd /home/lee_firefly/SceneOcTree/octomap/octomap/build/src/testing && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/color_tree_histogram.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/testing/CMakeFiles/color_tree_histogram.dir/build: ../bin/color_tree_histogram

.PHONY : src/testing/CMakeFiles/color_tree_histogram.dir/build

src/testing/CMakeFiles/color_tree_histogram.dir/requires: src/testing/CMakeFiles/color_tree_histogram.dir/color_tree_histogram.cpp.o.requires

.PHONY : src/testing/CMakeFiles/color_tree_histogram.dir/requires

src/testing/CMakeFiles/color_tree_histogram.dir/clean:
	cd /home/lee_firefly/SceneOcTree/octomap/octomap/build/src/testing && $(CMAKE_COMMAND) -P CMakeFiles/color_tree_histogram.dir/cmake_clean.cmake
.PHONY : src/testing/CMakeFiles/color_tree_histogram.dir/clean

src/testing/CMakeFiles/color_tree_histogram.dir/depend:
	cd /home/lee_firefly/SceneOcTree/octomap/octomap/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/lee_firefly/SceneOcTree/octomap/octomap /home/lee_firefly/SceneOcTree/octomap/octomap/src/testing /home/lee_firefly/SceneOcTree/octomap/octomap/build /home/lee_firefly/SceneOcTree/octomap/octomap/build/src/testing /home/lee_firefly/SceneOcTree/octomap/octomap/build/src/testing/CMakeFiles/color_tree_histogram.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/testing/CMakeFiles/color_tree_histogram.dir/depend
