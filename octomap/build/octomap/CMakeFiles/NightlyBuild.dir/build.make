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

# Utility rule file for NightlyBuild.

# Include the progress variables for this target.
include octomap/CMakeFiles/NightlyBuild.dir/progress.make

octomap/CMakeFiles/NightlyBuild:
	cd /home/lee_firefly/octomap/build/octomap && /usr/bin/ctest -D NightlyBuild

NightlyBuild: octomap/CMakeFiles/NightlyBuild
NightlyBuild: octomap/CMakeFiles/NightlyBuild.dir/build.make

.PHONY : NightlyBuild

# Rule to build all files generated by this target.
octomap/CMakeFiles/NightlyBuild.dir/build: NightlyBuild

.PHONY : octomap/CMakeFiles/NightlyBuild.dir/build

octomap/CMakeFiles/NightlyBuild.dir/clean:
	cd /home/lee_firefly/octomap/build/octomap && $(CMAKE_COMMAND) -P CMakeFiles/NightlyBuild.dir/cmake_clean.cmake
.PHONY : octomap/CMakeFiles/NightlyBuild.dir/clean

octomap/CMakeFiles/NightlyBuild.dir/depend:
	cd /home/lee_firefly/octomap/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/lee_firefly/octomap /home/lee_firefly/octomap/octomap /home/lee_firefly/octomap/build /home/lee_firefly/octomap/build/octomap /home/lee_firefly/octomap/build/octomap/CMakeFiles/NightlyBuild.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : octomap/CMakeFiles/NightlyBuild.dir/depend

