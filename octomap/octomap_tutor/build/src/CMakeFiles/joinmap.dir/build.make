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
CMAKE_SOURCE_DIR = /home/lee_firefly/octomap/octomap_tutor

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/lee_firefly/octomap/octomap_tutor/build

# Include any dependencies generated for this target.
include src/CMakeFiles/joinmap.dir/depend.make

# Include the progress variables for this target.
include src/CMakeFiles/joinmap.dir/progress.make

# Include the compile flags for this target's objects.
include src/CMakeFiles/joinmap.dir/flags.make

src/CMakeFiles/joinmap.dir/joinMap.cpp.o: src/CMakeFiles/joinmap.dir/flags.make
src/CMakeFiles/joinmap.dir/joinMap.cpp.o: ../src/joinMap.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/lee_firefly/octomap/octomap_tutor/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/CMakeFiles/joinmap.dir/joinMap.cpp.o"
	cd /home/lee_firefly/octomap/octomap_tutor/build/src && g++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/joinmap.dir/joinMap.cpp.o -c /home/lee_firefly/octomap/octomap_tutor/src/joinMap.cpp

src/CMakeFiles/joinmap.dir/joinMap.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/joinmap.dir/joinMap.cpp.i"
	cd /home/lee_firefly/octomap/octomap_tutor/build/src && g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/lee_firefly/octomap/octomap_tutor/src/joinMap.cpp > CMakeFiles/joinmap.dir/joinMap.cpp.i

src/CMakeFiles/joinmap.dir/joinMap.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/joinmap.dir/joinMap.cpp.s"
	cd /home/lee_firefly/octomap/octomap_tutor/build/src && g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/lee_firefly/octomap/octomap_tutor/src/joinMap.cpp -o CMakeFiles/joinmap.dir/joinMap.cpp.s

src/CMakeFiles/joinmap.dir/joinMap.cpp.o.requires:

.PHONY : src/CMakeFiles/joinmap.dir/joinMap.cpp.o.requires

src/CMakeFiles/joinmap.dir/joinMap.cpp.o.provides: src/CMakeFiles/joinmap.dir/joinMap.cpp.o.requires
	$(MAKE) -f src/CMakeFiles/joinmap.dir/build.make src/CMakeFiles/joinmap.dir/joinMap.cpp.o.provides.build
.PHONY : src/CMakeFiles/joinmap.dir/joinMap.cpp.o.provides

src/CMakeFiles/joinmap.dir/joinMap.cpp.o.provides.build: src/CMakeFiles/joinmap.dir/joinMap.cpp.o


# Object files for target joinmap
joinmap_OBJECTS = \
"CMakeFiles/joinmap.dir/joinMap.cpp.o"

# External object files for target joinmap
joinmap_EXTERNAL_OBJECTS =

../bin/joinmap: src/CMakeFiles/joinmap.dir/joinMap.cpp.o
../bin/joinmap: src/CMakeFiles/joinmap.dir/build.make
../bin/joinmap: /opt/ros/kinetic/lib/liboctomap.so
../bin/joinmap: /opt/ros/kinetic/lib/liboctomath.so
../bin/joinmap: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_stitching3.so.3.3.1
../bin/joinmap: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_superres3.so.3.3.1
../bin/joinmap: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_videostab3.so.3.3.1
../bin/joinmap: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_aruco3.so.3.3.1
../bin/joinmap: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_bgsegm3.so.3.3.1
../bin/joinmap: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_bioinspired3.so.3.3.1
../bin/joinmap: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_ccalib3.so.3.3.1
../bin/joinmap: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_cvv3.so.3.3.1
../bin/joinmap: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_dpm3.so.3.3.1
../bin/joinmap: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_face3.so.3.3.1
../bin/joinmap: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_fuzzy3.so.3.3.1
../bin/joinmap: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_hdf3.so.3.3.1
../bin/joinmap: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_img_hash3.so.3.3.1
../bin/joinmap: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_line_descriptor3.so.3.3.1
../bin/joinmap: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_optflow3.so.3.3.1
../bin/joinmap: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_reg3.so.3.3.1
../bin/joinmap: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_rgbd3.so.3.3.1
../bin/joinmap: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_saliency3.so.3.3.1
../bin/joinmap: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_stereo3.so.3.3.1
../bin/joinmap: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_structured_light3.so.3.3.1
../bin/joinmap: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_surface_matching3.so.3.3.1
../bin/joinmap: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_tracking3.so.3.3.1
../bin/joinmap: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_xfeatures2d3.so.3.3.1
../bin/joinmap: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_ximgproc3.so.3.3.1
../bin/joinmap: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_xobjdetect3.so.3.3.1
../bin/joinmap: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_xphoto3.so.3.3.1
../bin/joinmap: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_shape3.so.3.3.1
../bin/joinmap: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_photo3.so.3.3.1
../bin/joinmap: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_datasets3.so.3.3.1
../bin/joinmap: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_plot3.so.3.3.1
../bin/joinmap: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_text3.so.3.3.1
../bin/joinmap: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_dnn3.so.3.3.1
../bin/joinmap: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_ml3.so.3.3.1
../bin/joinmap: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_video3.so.3.3.1
../bin/joinmap: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_calib3d3.so.3.3.1
../bin/joinmap: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_features2d3.so.3.3.1
../bin/joinmap: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_highgui3.so.3.3.1
../bin/joinmap: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_videoio3.so.3.3.1
../bin/joinmap: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_viz3.so.3.3.1
../bin/joinmap: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_phase_unwrapping3.so.3.3.1
../bin/joinmap: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_flann3.so.3.3.1
../bin/joinmap: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_imgcodecs3.so.3.3.1
../bin/joinmap: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_objdetect3.so.3.3.1
../bin/joinmap: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_imgproc3.so.3.3.1
../bin/joinmap: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_core3.so.3.3.1
../bin/joinmap: src/CMakeFiles/joinmap.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/lee_firefly/octomap/octomap_tutor/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../bin/joinmap"
	cd /home/lee_firefly/octomap/octomap_tutor/build/src && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/joinmap.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/CMakeFiles/joinmap.dir/build: ../bin/joinmap

.PHONY : src/CMakeFiles/joinmap.dir/build

src/CMakeFiles/joinmap.dir/requires: src/CMakeFiles/joinmap.dir/joinMap.cpp.o.requires

.PHONY : src/CMakeFiles/joinmap.dir/requires

src/CMakeFiles/joinmap.dir/clean:
	cd /home/lee_firefly/octomap/octomap_tutor/build/src && $(CMAKE_COMMAND) -P CMakeFiles/joinmap.dir/cmake_clean.cmake
.PHONY : src/CMakeFiles/joinmap.dir/clean

src/CMakeFiles/joinmap.dir/depend:
	cd /home/lee_firefly/octomap/octomap_tutor/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/lee_firefly/octomap/octomap_tutor /home/lee_firefly/octomap/octomap_tutor/src /home/lee_firefly/octomap/octomap_tutor/build /home/lee_firefly/octomap/octomap_tutor/build/src /home/lee_firefly/octomap/octomap_tutor/build/src/CMakeFiles/joinmap.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/CMakeFiles/joinmap.dir/depend

