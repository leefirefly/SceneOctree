cmake_minimum_required(VERSION 2.8.3)
project(octree_use)

## Compile as C++11, supported in ROS Kinetic and newer
# add_compile_options(-std=c++11)

find_package(catkin REQUIRED COMPONENTS
  octomap_ros
  roscpp
  scene_octree_ros
  std_msgs
  topic_tools 
  octomap_msgs
  visualization_msgs
)



catkin_package(
#  INCLUDE_DIRS include
#  LIBRARIES octree_use
#  CATKIN_DEPENDS depend octomap_ros roscpp scene_octree_ros std_msgs
#  DEPENDS system_lib
)

#
include_directories(
# include
  ${catkin_INCLUDE_DIRS}
)

add_executable(talker src/talker.cpp)
target_link_libraries(talker ${catkin_LIBRARIES})
#add_dependencies(talker beginner_tutorials_generate_messages_cpp)


add_executable(bag2octree src/bag2octree.cpp)
target_link_libraries(bag2octree ${catkin_LIBRARIES})
#add_dependencies(bag2octree beginner_tutorials_generate_messages_cpp)

add_executable(octree_test src/octree_test.cpp)
target_link_libraries(octree_test ${catkin_LIBRARIES})
#add_dependencies(octree_test beginner_tutorials_generate_messages_cpp)

add_executable(sendMaker src/sendMaker.cpp)
target_link_libraries(sendMaker ${catkin_LIBRARIES})
#add_dependencies(sendMaker beginner_tutorials_generate_messages_cpp)
