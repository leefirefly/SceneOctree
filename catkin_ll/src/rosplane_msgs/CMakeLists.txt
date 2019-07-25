cmake_minimum_required(VERSION 2.8.3)
project(rosplane_msgs)

find_package(catkin REQUIRED COMPONENTS
  std_msgs
  message_generation
geometry_msgs
)

add_message_files(
  FILES
  Controller_Commands.msg
  Command.msg
  Current_Path.msg
  Waypoint.msg
  Controller_Internals.msg
  State.msg
  MultiVaGoal.msg
  Path.msg
  VirtualAgent.msg
  AreaVertex.msg
  Formation.msg
)

generate_messages(
  DEPENDENCIES
  std_msgs
geometry_msgs
)

catkin_package(
  CATKIN_DEPENDS std_msgs
)
