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
include src/CMakeFiles/pcd2SceneOctomap.dir/depend.make

# Include the progress variables for this target.
include src/CMakeFiles/pcd2SceneOctomap.dir/progress.make

# Include the compile flags for this target's objects.
include src/CMakeFiles/pcd2SceneOctomap.dir/flags.make

src/CMakeFiles/pcd2SceneOctomap.dir/pcd2SceneOctomap.cpp.o: src/CMakeFiles/pcd2SceneOctomap.dir/flags.make
src/CMakeFiles/pcd2SceneOctomap.dir/pcd2SceneOctomap.cpp.o: ../src/pcd2SceneOctomap.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/lee_firefly/SceneOcTree/octomap/octomap/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/CMakeFiles/pcd2SceneOctomap.dir/pcd2SceneOctomap.cpp.o"
	cd /home/lee_firefly/SceneOcTree/octomap/octomap/build/src && g++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/pcd2SceneOctomap.dir/pcd2SceneOctomap.cpp.o -c /home/lee_firefly/SceneOcTree/octomap/octomap/src/pcd2SceneOctomap.cpp

src/CMakeFiles/pcd2SceneOctomap.dir/pcd2SceneOctomap.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/pcd2SceneOctomap.dir/pcd2SceneOctomap.cpp.i"
	cd /home/lee_firefly/SceneOcTree/octomap/octomap/build/src && g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/lee_firefly/SceneOcTree/octomap/octomap/src/pcd2SceneOctomap.cpp > CMakeFiles/pcd2SceneOctomap.dir/pcd2SceneOctomap.cpp.i

src/CMakeFiles/pcd2SceneOctomap.dir/pcd2SceneOctomap.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/pcd2SceneOctomap.dir/pcd2SceneOctomap.cpp.s"
	cd /home/lee_firefly/SceneOcTree/octomap/octomap/build/src && g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/lee_firefly/SceneOcTree/octomap/octomap/src/pcd2SceneOctomap.cpp -o CMakeFiles/pcd2SceneOctomap.dir/pcd2SceneOctomap.cpp.s

src/CMakeFiles/pcd2SceneOctomap.dir/pcd2SceneOctomap.cpp.o.requires:

.PHONY : src/CMakeFiles/pcd2SceneOctomap.dir/pcd2SceneOctomap.cpp.o.requires

src/CMakeFiles/pcd2SceneOctomap.dir/pcd2SceneOctomap.cpp.o.provides: src/CMakeFiles/pcd2SceneOctomap.dir/pcd2SceneOctomap.cpp.o.requires
	$(MAKE) -f src/CMakeFiles/pcd2SceneOctomap.dir/build.make src/CMakeFiles/pcd2SceneOctomap.dir/pcd2SceneOctomap.cpp.o.provides.build
.PHONY : src/CMakeFiles/pcd2SceneOctomap.dir/pcd2SceneOctomap.cpp.o.provides

src/CMakeFiles/pcd2SceneOctomap.dir/pcd2SceneOctomap.cpp.o.provides.build: src/CMakeFiles/pcd2SceneOctomap.dir/pcd2SceneOctomap.cpp.o


# Object files for target pcd2SceneOctomap
pcd2SceneOctomap_OBJECTS = \
"CMakeFiles/pcd2SceneOctomap.dir/pcd2SceneOctomap.cpp.o"

# External object files for target pcd2SceneOctomap
pcd2SceneOctomap_EXTERNAL_OBJECTS =

../bin/pcd2SceneOctomap: src/CMakeFiles/pcd2SceneOctomap.dir/pcd2SceneOctomap.cpp.o
../bin/pcd2SceneOctomap: src/CMakeFiles/pcd2SceneOctomap.dir/build.make
../bin/pcd2SceneOctomap: ../lib/liboctomap.so.1.9.0
../bin/pcd2SceneOctomap: ../lib/liboctomath.so.1.9.0
../bin/pcd2SceneOctomap: src/CMakeFiles/pcd2SceneOctomap.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/lee_firefly/SceneOcTree/octomap/octomap/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../bin/pcd2SceneOctomap"
	cd /home/lee_firefly/SceneOcTree/octomap/octomap/build/src && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/pcd2SceneOctomap.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/CMakeFiles/pcd2SceneOctomap.dir/build: ../bin/pcd2SceneOctomap

.PHONY : src/CMakeFiles/pcd2SceneOctomap.dir/build

src/CMakeFiles/pcd2SceneOctomap.dir/requires: src/CMakeFiles/pcd2SceneOctomap.dir/pcd2SceneOctomap.cpp.o.requires

.PHONY : src/CMakeFiles/pcd2SceneOctomap.dir/requires

src/CMakeFiles/pcd2SceneOctomap.dir/clean:
	cd /home/lee_firefly/SceneOcTree/octomap/octomap/build/src && $(CMAKE_COMMAND) -P CMakeFiles/pcd2SceneOctomap.dir/cmake_clean.cmake
.PHONY : src/CMakeFiles/pcd2SceneOctomap.dir/clean

src/CMakeFiles/pcd2SceneOctomap.dir/depend:
	cd /home/lee_firefly/SceneOcTree/octomap/octomap/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/lee_firefly/SceneOcTree/octomap/octomap /home/lee_firefly/SceneOcTree/octomap/octomap/src /home/lee_firefly/SceneOcTree/octomap/octomap/build /home/lee_firefly/SceneOcTree/octomap/octomap/build/src /home/lee_firefly/SceneOcTree/octomap/octomap/build/src/CMakeFiles/pcd2SceneOctomap.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/CMakeFiles/pcd2SceneOctomap.dir/depend

