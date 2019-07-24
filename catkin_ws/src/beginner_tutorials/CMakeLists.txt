cmake_minimum_required(VERSION 2.8.3)
project(beginner_tutorials)

add_definitions(-std=c++11)
add_definitions(-std=c++14)

find_package(Boost REQUIRED COMPONENTS regex)
find_package(catkin REQUIRED COMPONENTS
  roscpp
  rospy
  std_msgs
  genmsg
  ros_type_introspection
  topic_tools
  rostime 
  roscpp_serialization
  abseil_cpp
  pcl_ros
  octomap_ros
  scene_octree_ros
  octomap_msgs
  visualization_msgs
)

add_message_files(
   FILES
   Num.msg
)

## Generate services in the 'srv' folder
add_service_files(
  FILES
  AddTwoInts.srv
)


## Generate added messages and services with any dependencies listed here
generate_messages(
  DEPENDENCIES
  std_msgs
)

## DEPENDS: system dependencies of this project that dependent projects also need
catkin_package(
	INCLUDE_DIRS
	LIBRARIES scene_octree_ros
	CATKIN_DEPENDS
	ros_type_introspection
	topic_tools
  octomap_ros
  octomap_msgs
  visualization_msgs
  pcl_ros
	roscpp 
  rostime 
  roscpp_serialization
  abseil_cpp
	DEPENDS
)
# catkin_add_nosetests(test)
include_directories(include ${catkin_INCLUDE_DIRS})


add_executable(talker src/talker.cpp)
target_link_libraries(talker ${catkin_LIBRARIES})
add_dependencies(talker beginner_tutorials_generate_messages_cpp)

add_executable(talker1 src/talker1.cpp)
target_link_libraries(talker1 ${catkin_LIBRARIES})
add_dependencies(talker1 beginner_tutorials_generate_messages_cpp)

add_executable(listener src/listener.cpp)
target_link_libraries(listener ${catkin_LIBRARIES})
add_dependencies(listener beginner_tutorials_generate_messages_cpp)

add_executable(add_two_ints_server src/add_two_ints_server.cpp)
target_link_libraries(add_two_ints_server ${catkin_LIBRARIES})
add_dependencies(add_two_ints_server beginner_tutorials_gencpp)

add_executable(add_two_ints_client src/add_two_ints_client.cpp)
target_link_libraries(add_two_ints_client ${catkin_LIBRARIES})
add_dependencies(add_two_ints_client beginner_tutorials_gencpp)

add_executable(bag2octree src/bag2octree.cpp)
target_link_libraries(bag2octree ${catkin_LIBRARIES})
add_dependencies(bag2octree beginner_tutorials_generate_messages_cpp)

#add_executable(octree_test src/octree_test.cpp)
#target_link_libraries(octree_test ${catkin_LIBRARIES})
#add_dependencies(octree_test beginner_tutorials_generate_messages_cpp)

add_executable(sendMaker src/sendMaker.cpp)
target_link_libraries(sendMaker ${catkin_LIBRARIES})
add_dependencies(sendMaker beginner_tutorials_generate_messages_cpp)