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
include octovis/CMakeFiles/octovis-static.dir/depend.make

# Include the progress variables for this target.
include octovis/CMakeFiles/octovis-static.dir/progress.make

# Include the compile flags for this target's objects.
include octovis/CMakeFiles/octovis-static.dir/flags.make

octovis/CMakeFiles/octovis-static.dir/src/SceneObject.cpp.o: octovis/CMakeFiles/octovis-static.dir/flags.make
octovis/CMakeFiles/octovis-static.dir/src/SceneObject.cpp.o: ../octovis/src/SceneObject.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/lee_firefly/octomap/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object octovis/CMakeFiles/octovis-static.dir/src/SceneObject.cpp.o"
	cd /home/lee_firefly/octomap/build/octovis && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/octovis-static.dir/src/SceneObject.cpp.o -c /home/lee_firefly/octomap/octovis/src/SceneObject.cpp

octovis/CMakeFiles/octovis-static.dir/src/SceneObject.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/octovis-static.dir/src/SceneObject.cpp.i"
	cd /home/lee_firefly/octomap/build/octovis && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/lee_firefly/octomap/octovis/src/SceneObject.cpp > CMakeFiles/octovis-static.dir/src/SceneObject.cpp.i

octovis/CMakeFiles/octovis-static.dir/src/SceneObject.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/octovis-static.dir/src/SceneObject.cpp.s"
	cd /home/lee_firefly/octomap/build/octovis && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/lee_firefly/octomap/octovis/src/SceneObject.cpp -o CMakeFiles/octovis-static.dir/src/SceneObject.cpp.s

octovis/CMakeFiles/octovis-static.dir/src/SceneObject.cpp.o.requires:

.PHONY : octovis/CMakeFiles/octovis-static.dir/src/SceneObject.cpp.o.requires

octovis/CMakeFiles/octovis-static.dir/src/SceneObject.cpp.o.provides: octovis/CMakeFiles/octovis-static.dir/src/SceneObject.cpp.o.requires
	$(MAKE) -f octovis/CMakeFiles/octovis-static.dir/build.make octovis/CMakeFiles/octovis-static.dir/src/SceneObject.cpp.o.provides.build
.PHONY : octovis/CMakeFiles/octovis-static.dir/src/SceneObject.cpp.o.provides

octovis/CMakeFiles/octovis-static.dir/src/SceneObject.cpp.o.provides.build: octovis/CMakeFiles/octovis-static.dir/src/SceneObject.cpp.o


octovis/CMakeFiles/octovis-static.dir/src/PointcloudDrawer.cpp.o: octovis/CMakeFiles/octovis-static.dir/flags.make
octovis/CMakeFiles/octovis-static.dir/src/PointcloudDrawer.cpp.o: ../octovis/src/PointcloudDrawer.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/lee_firefly/octomap/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object octovis/CMakeFiles/octovis-static.dir/src/PointcloudDrawer.cpp.o"
	cd /home/lee_firefly/octomap/build/octovis && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/octovis-static.dir/src/PointcloudDrawer.cpp.o -c /home/lee_firefly/octomap/octovis/src/PointcloudDrawer.cpp

octovis/CMakeFiles/octovis-static.dir/src/PointcloudDrawer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/octovis-static.dir/src/PointcloudDrawer.cpp.i"
	cd /home/lee_firefly/octomap/build/octovis && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/lee_firefly/octomap/octovis/src/PointcloudDrawer.cpp > CMakeFiles/octovis-static.dir/src/PointcloudDrawer.cpp.i

octovis/CMakeFiles/octovis-static.dir/src/PointcloudDrawer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/octovis-static.dir/src/PointcloudDrawer.cpp.s"
	cd /home/lee_firefly/octomap/build/octovis && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/lee_firefly/octomap/octovis/src/PointcloudDrawer.cpp -o CMakeFiles/octovis-static.dir/src/PointcloudDrawer.cpp.s

octovis/CMakeFiles/octovis-static.dir/src/PointcloudDrawer.cpp.o.requires:

.PHONY : octovis/CMakeFiles/octovis-static.dir/src/PointcloudDrawer.cpp.o.requires

octovis/CMakeFiles/octovis-static.dir/src/PointcloudDrawer.cpp.o.provides: octovis/CMakeFiles/octovis-static.dir/src/PointcloudDrawer.cpp.o.requires
	$(MAKE) -f octovis/CMakeFiles/octovis-static.dir/build.make octovis/CMakeFiles/octovis-static.dir/src/PointcloudDrawer.cpp.o.provides.build
.PHONY : octovis/CMakeFiles/octovis-static.dir/src/PointcloudDrawer.cpp.o.provides

octovis/CMakeFiles/octovis-static.dir/src/PointcloudDrawer.cpp.o.provides.build: octovis/CMakeFiles/octovis-static.dir/src/PointcloudDrawer.cpp.o


octovis/CMakeFiles/octovis-static.dir/src/OcTreeDrawer.cpp.o: octovis/CMakeFiles/octovis-static.dir/flags.make
octovis/CMakeFiles/octovis-static.dir/src/OcTreeDrawer.cpp.o: ../octovis/src/OcTreeDrawer.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/lee_firefly/octomap/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object octovis/CMakeFiles/octovis-static.dir/src/OcTreeDrawer.cpp.o"
	cd /home/lee_firefly/octomap/build/octovis && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/octovis-static.dir/src/OcTreeDrawer.cpp.o -c /home/lee_firefly/octomap/octovis/src/OcTreeDrawer.cpp

octovis/CMakeFiles/octovis-static.dir/src/OcTreeDrawer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/octovis-static.dir/src/OcTreeDrawer.cpp.i"
	cd /home/lee_firefly/octomap/build/octovis && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/lee_firefly/octomap/octovis/src/OcTreeDrawer.cpp > CMakeFiles/octovis-static.dir/src/OcTreeDrawer.cpp.i

octovis/CMakeFiles/octovis-static.dir/src/OcTreeDrawer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/octovis-static.dir/src/OcTreeDrawer.cpp.s"
	cd /home/lee_firefly/octomap/build/octovis && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/lee_firefly/octomap/octovis/src/OcTreeDrawer.cpp -o CMakeFiles/octovis-static.dir/src/OcTreeDrawer.cpp.s

octovis/CMakeFiles/octovis-static.dir/src/OcTreeDrawer.cpp.o.requires:

.PHONY : octovis/CMakeFiles/octovis-static.dir/src/OcTreeDrawer.cpp.o.requires

octovis/CMakeFiles/octovis-static.dir/src/OcTreeDrawer.cpp.o.provides: octovis/CMakeFiles/octovis-static.dir/src/OcTreeDrawer.cpp.o.requires
	$(MAKE) -f octovis/CMakeFiles/octovis-static.dir/build.make octovis/CMakeFiles/octovis-static.dir/src/OcTreeDrawer.cpp.o.provides.build
.PHONY : octovis/CMakeFiles/octovis-static.dir/src/OcTreeDrawer.cpp.o.provides

octovis/CMakeFiles/octovis-static.dir/src/OcTreeDrawer.cpp.o.provides.build: octovis/CMakeFiles/octovis-static.dir/src/OcTreeDrawer.cpp.o


octovis/CMakeFiles/octovis-static.dir/src/SelectionBox.cpp.o: octovis/CMakeFiles/octovis-static.dir/flags.make
octovis/CMakeFiles/octovis-static.dir/src/SelectionBox.cpp.o: ../octovis/src/SelectionBox.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/lee_firefly/octomap/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object octovis/CMakeFiles/octovis-static.dir/src/SelectionBox.cpp.o"
	cd /home/lee_firefly/octomap/build/octovis && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/octovis-static.dir/src/SelectionBox.cpp.o -c /home/lee_firefly/octomap/octovis/src/SelectionBox.cpp

octovis/CMakeFiles/octovis-static.dir/src/SelectionBox.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/octovis-static.dir/src/SelectionBox.cpp.i"
	cd /home/lee_firefly/octomap/build/octovis && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/lee_firefly/octomap/octovis/src/SelectionBox.cpp > CMakeFiles/octovis-static.dir/src/SelectionBox.cpp.i

octovis/CMakeFiles/octovis-static.dir/src/SelectionBox.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/octovis-static.dir/src/SelectionBox.cpp.s"
	cd /home/lee_firefly/octomap/build/octovis && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/lee_firefly/octomap/octovis/src/SelectionBox.cpp -o CMakeFiles/octovis-static.dir/src/SelectionBox.cpp.s

octovis/CMakeFiles/octovis-static.dir/src/SelectionBox.cpp.o.requires:

.PHONY : octovis/CMakeFiles/octovis-static.dir/src/SelectionBox.cpp.o.requires

octovis/CMakeFiles/octovis-static.dir/src/SelectionBox.cpp.o.provides: octovis/CMakeFiles/octovis-static.dir/src/SelectionBox.cpp.o.requires
	$(MAKE) -f octovis/CMakeFiles/octovis-static.dir/build.make octovis/CMakeFiles/octovis-static.dir/src/SelectionBox.cpp.o.provides.build
.PHONY : octovis/CMakeFiles/octovis-static.dir/src/SelectionBox.cpp.o.provides

octovis/CMakeFiles/octovis-static.dir/src/SelectionBox.cpp.o.provides.build: octovis/CMakeFiles/octovis-static.dir/src/SelectionBox.cpp.o


octovis/CMakeFiles/octovis-static.dir/src/TrajectoryDrawer.cpp.o: octovis/CMakeFiles/octovis-static.dir/flags.make
octovis/CMakeFiles/octovis-static.dir/src/TrajectoryDrawer.cpp.o: ../octovis/src/TrajectoryDrawer.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/lee_firefly/octomap/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object octovis/CMakeFiles/octovis-static.dir/src/TrajectoryDrawer.cpp.o"
	cd /home/lee_firefly/octomap/build/octovis && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/octovis-static.dir/src/TrajectoryDrawer.cpp.o -c /home/lee_firefly/octomap/octovis/src/TrajectoryDrawer.cpp

octovis/CMakeFiles/octovis-static.dir/src/TrajectoryDrawer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/octovis-static.dir/src/TrajectoryDrawer.cpp.i"
	cd /home/lee_firefly/octomap/build/octovis && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/lee_firefly/octomap/octovis/src/TrajectoryDrawer.cpp > CMakeFiles/octovis-static.dir/src/TrajectoryDrawer.cpp.i

octovis/CMakeFiles/octovis-static.dir/src/TrajectoryDrawer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/octovis-static.dir/src/TrajectoryDrawer.cpp.s"
	cd /home/lee_firefly/octomap/build/octovis && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/lee_firefly/octomap/octovis/src/TrajectoryDrawer.cpp -o CMakeFiles/octovis-static.dir/src/TrajectoryDrawer.cpp.s

octovis/CMakeFiles/octovis-static.dir/src/TrajectoryDrawer.cpp.o.requires:

.PHONY : octovis/CMakeFiles/octovis-static.dir/src/TrajectoryDrawer.cpp.o.requires

octovis/CMakeFiles/octovis-static.dir/src/TrajectoryDrawer.cpp.o.provides: octovis/CMakeFiles/octovis-static.dir/src/TrajectoryDrawer.cpp.o.requires
	$(MAKE) -f octovis/CMakeFiles/octovis-static.dir/build.make octovis/CMakeFiles/octovis-static.dir/src/TrajectoryDrawer.cpp.o.provides.build
.PHONY : octovis/CMakeFiles/octovis-static.dir/src/TrajectoryDrawer.cpp.o.provides

octovis/CMakeFiles/octovis-static.dir/src/TrajectoryDrawer.cpp.o.provides.build: octovis/CMakeFiles/octovis-static.dir/src/TrajectoryDrawer.cpp.o


octovis/CMakeFiles/octovis-static.dir/src/ColorOcTreeDrawer.cpp.o: octovis/CMakeFiles/octovis-static.dir/flags.make
octovis/CMakeFiles/octovis-static.dir/src/ColorOcTreeDrawer.cpp.o: ../octovis/src/ColorOcTreeDrawer.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/lee_firefly/octomap/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object octovis/CMakeFiles/octovis-static.dir/src/ColorOcTreeDrawer.cpp.o"
	cd /home/lee_firefly/octomap/build/octovis && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/octovis-static.dir/src/ColorOcTreeDrawer.cpp.o -c /home/lee_firefly/octomap/octovis/src/ColorOcTreeDrawer.cpp

octovis/CMakeFiles/octovis-static.dir/src/ColorOcTreeDrawer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/octovis-static.dir/src/ColorOcTreeDrawer.cpp.i"
	cd /home/lee_firefly/octomap/build/octovis && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/lee_firefly/octomap/octovis/src/ColorOcTreeDrawer.cpp > CMakeFiles/octovis-static.dir/src/ColorOcTreeDrawer.cpp.i

octovis/CMakeFiles/octovis-static.dir/src/ColorOcTreeDrawer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/octovis-static.dir/src/ColorOcTreeDrawer.cpp.s"
	cd /home/lee_firefly/octomap/build/octovis && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/lee_firefly/octomap/octovis/src/ColorOcTreeDrawer.cpp -o CMakeFiles/octovis-static.dir/src/ColorOcTreeDrawer.cpp.s

octovis/CMakeFiles/octovis-static.dir/src/ColorOcTreeDrawer.cpp.o.requires:

.PHONY : octovis/CMakeFiles/octovis-static.dir/src/ColorOcTreeDrawer.cpp.o.requires

octovis/CMakeFiles/octovis-static.dir/src/ColorOcTreeDrawer.cpp.o.provides: octovis/CMakeFiles/octovis-static.dir/src/ColorOcTreeDrawer.cpp.o.requires
	$(MAKE) -f octovis/CMakeFiles/octovis-static.dir/build.make octovis/CMakeFiles/octovis-static.dir/src/ColorOcTreeDrawer.cpp.o.provides.build
.PHONY : octovis/CMakeFiles/octovis-static.dir/src/ColorOcTreeDrawer.cpp.o.provides

octovis/CMakeFiles/octovis-static.dir/src/ColorOcTreeDrawer.cpp.o.provides.build: octovis/CMakeFiles/octovis-static.dir/src/ColorOcTreeDrawer.cpp.o


# Object files for target octovis-static
octovis__static_OBJECTS = \
"CMakeFiles/octovis-static.dir/src/SceneObject.cpp.o" \
"CMakeFiles/octovis-static.dir/src/PointcloudDrawer.cpp.o" \
"CMakeFiles/octovis-static.dir/src/OcTreeDrawer.cpp.o" \
"CMakeFiles/octovis-static.dir/src/SelectionBox.cpp.o" \
"CMakeFiles/octovis-static.dir/src/TrajectoryDrawer.cpp.o" \
"CMakeFiles/octovis-static.dir/src/ColorOcTreeDrawer.cpp.o"

# External object files for target octovis-static
octovis__static_EXTERNAL_OBJECTS =

../lib/liboctovis.a: octovis/CMakeFiles/octovis-static.dir/src/SceneObject.cpp.o
../lib/liboctovis.a: octovis/CMakeFiles/octovis-static.dir/src/PointcloudDrawer.cpp.o
../lib/liboctovis.a: octovis/CMakeFiles/octovis-static.dir/src/OcTreeDrawer.cpp.o
../lib/liboctovis.a: octovis/CMakeFiles/octovis-static.dir/src/SelectionBox.cpp.o
../lib/liboctovis.a: octovis/CMakeFiles/octovis-static.dir/src/TrajectoryDrawer.cpp.o
../lib/liboctovis.a: octovis/CMakeFiles/octovis-static.dir/src/ColorOcTreeDrawer.cpp.o
../lib/liboctovis.a: octovis/CMakeFiles/octovis-static.dir/build.make
../lib/liboctovis.a: octovis/CMakeFiles/octovis-static.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/lee_firefly/octomap/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Linking CXX static library ../../lib/liboctovis.a"
	cd /home/lee_firefly/octomap/build/octovis && $(CMAKE_COMMAND) -P CMakeFiles/octovis-static.dir/cmake_clean_target.cmake
	cd /home/lee_firefly/octomap/build/octovis && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/octovis-static.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
octovis/CMakeFiles/octovis-static.dir/build: ../lib/liboctovis.a

.PHONY : octovis/CMakeFiles/octovis-static.dir/build

octovis/CMakeFiles/octovis-static.dir/requires: octovis/CMakeFiles/octovis-static.dir/src/SceneObject.cpp.o.requires
octovis/CMakeFiles/octovis-static.dir/requires: octovis/CMakeFiles/octovis-static.dir/src/PointcloudDrawer.cpp.o.requires
octovis/CMakeFiles/octovis-static.dir/requires: octovis/CMakeFiles/octovis-static.dir/src/OcTreeDrawer.cpp.o.requires
octovis/CMakeFiles/octovis-static.dir/requires: octovis/CMakeFiles/octovis-static.dir/src/SelectionBox.cpp.o.requires
octovis/CMakeFiles/octovis-static.dir/requires: octovis/CMakeFiles/octovis-static.dir/src/TrajectoryDrawer.cpp.o.requires
octovis/CMakeFiles/octovis-static.dir/requires: octovis/CMakeFiles/octovis-static.dir/src/ColorOcTreeDrawer.cpp.o.requires

.PHONY : octovis/CMakeFiles/octovis-static.dir/requires

octovis/CMakeFiles/octovis-static.dir/clean:
	cd /home/lee_firefly/octomap/build/octovis && $(CMAKE_COMMAND) -P CMakeFiles/octovis-static.dir/cmake_clean.cmake
.PHONY : octovis/CMakeFiles/octovis-static.dir/clean

octovis/CMakeFiles/octovis-static.dir/depend:
	cd /home/lee_firefly/octomap/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/lee_firefly/octomap /home/lee_firefly/octomap/octovis /home/lee_firefly/octomap/build /home/lee_firefly/octomap/build/octovis /home/lee_firefly/octomap/build/octovis/CMakeFiles/octovis-static.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : octovis/CMakeFiles/octovis-static.dir/depend
