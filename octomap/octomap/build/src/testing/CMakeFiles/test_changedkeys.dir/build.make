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
include src/testing/CMakeFiles/test_changedkeys.dir/depend.make

# Include the progress variables for this target.
include src/testing/CMakeFiles/test_changedkeys.dir/progress.make

# Include the compile flags for this target's objects.
include src/testing/CMakeFiles/test_changedkeys.dir/flags.make

src/testing/CMakeFiles/test_changedkeys.dir/test_changedkeys.cpp.o: src/testing/CMakeFiles/test_changedkeys.dir/flags.make
src/testing/CMakeFiles/test_changedkeys.dir/test_changedkeys.cpp.o: ../src/testing/test_changedkeys.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/lee_firefly/SceneOcTree/octomap/octomap/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/testing/CMakeFiles/test_changedkeys.dir/test_changedkeys.cpp.o"
	cd /home/lee_firefly/SceneOcTree/octomap/octomap/build/src/testing && g++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/test_changedkeys.dir/test_changedkeys.cpp.o -c /home/lee_firefly/SceneOcTree/octomap/octomap/src/testing/test_changedkeys.cpp

src/testing/CMakeFiles/test_changedkeys.dir/test_changedkeys.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test_changedkeys.dir/test_changedkeys.cpp.i"
	cd /home/lee_firefly/SceneOcTree/octomap/octomap/build/src/testing && g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/lee_firefly/SceneOcTree/octomap/octomap/src/testing/test_changedkeys.cpp > CMakeFiles/test_changedkeys.dir/test_changedkeys.cpp.i

src/testing/CMakeFiles/test_changedkeys.dir/test_changedkeys.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test_changedkeys.dir/test_changedkeys.cpp.s"
	cd /home/lee_firefly/SceneOcTree/octomap/octomap/build/src/testing && g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/lee_firefly/SceneOcTree/octomap/octomap/src/testing/test_changedkeys.cpp -o CMakeFiles/test_changedkeys.dir/test_changedkeys.cpp.s

src/testing/CMakeFiles/test_changedkeys.dir/test_changedkeys.cpp.o.requires:

.PHONY : src/testing/CMakeFiles/test_changedkeys.dir/test_changedkeys.cpp.o.requires

src/testing/CMakeFiles/test_changedkeys.dir/test_changedkeys.cpp.o.provides: src/testing/CMakeFiles/test_changedkeys.dir/test_changedkeys.cpp.o.requires
	$(MAKE) -f src/testing/CMakeFiles/test_changedkeys.dir/build.make src/testing/CMakeFiles/test_changedkeys.dir/test_changedkeys.cpp.o.provides.build
.PHONY : src/testing/CMakeFiles/test_changedkeys.dir/test_changedkeys.cpp.o.provides

src/testing/CMakeFiles/test_changedkeys.dir/test_changedkeys.cpp.o.provides.build: src/testing/CMakeFiles/test_changedkeys.dir/test_changedkeys.cpp.o


# Object files for target test_changedkeys
test_changedkeys_OBJECTS = \
"CMakeFiles/test_changedkeys.dir/test_changedkeys.cpp.o"

# External object files for target test_changedkeys
test_changedkeys_EXTERNAL_OBJECTS =

../bin/test_changedkeys: src/testing/CMakeFiles/test_changedkeys.dir/test_changedkeys.cpp.o
../bin/test_changedkeys: src/testing/CMakeFiles/test_changedkeys.dir/build.make
../bin/test_changedkeys: ../lib/liboctomap.so.1.9.0
../bin/test_changedkeys: ../lib/liboctomath.so.1.9.0
../bin/test_changedkeys: src/testing/CMakeFiles/test_changedkeys.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/lee_firefly/SceneOcTree/octomap/octomap/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../../bin/test_changedkeys"
	cd /home/lee_firefly/SceneOcTree/octomap/octomap/build/src/testing && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/test_changedkeys.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/testing/CMakeFiles/test_changedkeys.dir/build: ../bin/test_changedkeys

.PHONY : src/testing/CMakeFiles/test_changedkeys.dir/build

src/testing/CMakeFiles/test_changedkeys.dir/requires: src/testing/CMakeFiles/test_changedkeys.dir/test_changedkeys.cpp.o.requires

.PHONY : src/testing/CMakeFiles/test_changedkeys.dir/requires

src/testing/CMakeFiles/test_changedkeys.dir/clean:
	cd /home/lee_firefly/SceneOcTree/octomap/octomap/build/src/testing && $(CMAKE_COMMAND) -P CMakeFiles/test_changedkeys.dir/cmake_clean.cmake
.PHONY : src/testing/CMakeFiles/test_changedkeys.dir/clean

src/testing/CMakeFiles/test_changedkeys.dir/depend:
	cd /home/lee_firefly/SceneOcTree/octomap/octomap/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/lee_firefly/SceneOcTree/octomap/octomap /home/lee_firefly/SceneOcTree/octomap/octomap/src/testing /home/lee_firefly/SceneOcTree/octomap/octomap/build /home/lee_firefly/SceneOcTree/octomap/octomap/build/src/testing /home/lee_firefly/SceneOcTree/octomap/octomap/build/src/testing/CMakeFiles/test_changedkeys.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/testing/CMakeFiles/test_changedkeys.dir/depend

