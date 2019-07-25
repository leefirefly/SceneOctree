cmake_minimum_required(VERSION 2.8.3)
project(abstract_msgs)

find_package(catkin REQUIRED COMPONENTS
  std_msgs
  geometry_msgs
  sensor_msgs
  message_generation
)

add_message_files(
  FILES
  UnifiedData.msg
  Query.msg
  ActorQuery.msg
  LayerQuery.msg
  SceneQuery.msg
  QueryResult.msg
  StationData.msg
  ActiveActors.msg
  EventResult.msg
  EventSceneMap.msg
  EventQuery.msg
)

generate_messages(
  DEPENDENCIES
  std_msgs
  sensor_msgs
  geometry_msgs
)

catkin_package(
  CATKIN_DEPENDS std_msgs sensor_msgs geometry_msgs message_runtime
)
