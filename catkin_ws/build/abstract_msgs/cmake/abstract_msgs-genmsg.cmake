# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "abstract_msgs: 11 messages, 0 services")

set(MSG_I_FLAGS "-Iabstract_msgs:/home/lee_firefly/catkin_ws/src/abstract_msgs/msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg;-Isensor_msgs:/opt/ros/kinetic/share/sensor_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/kinetic/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(abstract_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/lee_firefly/catkin_ws/src/abstract_msgs/msg/QueryResult.msg" NAME_WE)
add_custom_target(_abstract_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "abstract_msgs" "/home/lee_firefly/catkin_ws/src/abstract_msgs/msg/QueryResult.msg" "geometry_msgs/Quaternion:geometry_msgs/Pose:abstract_msgs/UnifiedData:geometry_msgs/Point"
)

get_filename_component(_filename "/home/lee_firefly/catkin_ws/src/abstract_msgs/msg/ActiveActors.msg" NAME_WE)
add_custom_target(_abstract_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "abstract_msgs" "/home/lee_firefly/catkin_ws/src/abstract_msgs/msg/ActiveActors.msg" ""
)

get_filename_component(_filename "/home/lee_firefly/catkin_ws/src/abstract_msgs/msg/SceneQuery.msg" NAME_WE)
add_custom_target(_abstract_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "abstract_msgs" "/home/lee_firefly/catkin_ws/src/abstract_msgs/msg/SceneQuery.msg" "abstract_msgs/ActorQuery:abstract_msgs/LayerQuery"
)

get_filename_component(_filename "/home/lee_firefly/catkin_ws/src/abstract_msgs/msg/Query.msg" NAME_WE)
add_custom_target(_abstract_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "abstract_msgs" "/home/lee_firefly/catkin_ws/src/abstract_msgs/msg/Query.msg" ""
)

get_filename_component(_filename "/home/lee_firefly/catkin_ws/src/abstract_msgs/msg/EventQuery.msg" NAME_WE)
add_custom_target(_abstract_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "abstract_msgs" "/home/lee_firefly/catkin_ws/src/abstract_msgs/msg/EventQuery.msg" ""
)

get_filename_component(_filename "/home/lee_firefly/catkin_ws/src/abstract_msgs/msg/LayerQuery.msg" NAME_WE)
add_custom_target(_abstract_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "abstract_msgs" "/home/lee_firefly/catkin_ws/src/abstract_msgs/msg/LayerQuery.msg" "abstract_msgs/ActorQuery"
)

get_filename_component(_filename "/home/lee_firefly/catkin_ws/src/abstract_msgs/msg/EventSceneMap.msg" NAME_WE)
add_custom_target(_abstract_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "abstract_msgs" "/home/lee_firefly/catkin_ws/src/abstract_msgs/msg/EventSceneMap.msg" "abstract_msgs/EventQuery"
)

get_filename_component(_filename "/home/lee_firefly/catkin_ws/src/abstract_msgs/msg/ActorQuery.msg" NAME_WE)
add_custom_target(_abstract_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "abstract_msgs" "/home/lee_firefly/catkin_ws/src/abstract_msgs/msg/ActorQuery.msg" ""
)

get_filename_component(_filename "/home/lee_firefly/catkin_ws/src/abstract_msgs/msg/EventResult.msg" NAME_WE)
add_custom_target(_abstract_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "abstract_msgs" "/home/lee_firefly/catkin_ws/src/abstract_msgs/msg/EventResult.msg" "geometry_msgs/Quaternion:geometry_msgs/Pose:abstract_msgs/UnifiedData:geometry_msgs/Point"
)

get_filename_component(_filename "/home/lee_firefly/catkin_ws/src/abstract_msgs/msg/UnifiedData.msg" NAME_WE)
add_custom_target(_abstract_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "abstract_msgs" "/home/lee_firefly/catkin_ws/src/abstract_msgs/msg/UnifiedData.msg" "geometry_msgs/Quaternion:geometry_msgs/Pose:geometry_msgs/Point"
)

get_filename_component(_filename "/home/lee_firefly/catkin_ws/src/abstract_msgs/msg/StationData.msg" NAME_WE)
add_custom_target(_abstract_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "abstract_msgs" "/home/lee_firefly/catkin_ws/src/abstract_msgs/msg/StationData.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(abstract_msgs
  "/home/lee_firefly/catkin_ws/src/abstract_msgs/msg/QueryResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/lee_firefly/catkin_ws/src/abstract_msgs/msg/UnifiedData.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/abstract_msgs
)
_generate_msg_cpp(abstract_msgs
  "/home/lee_firefly/catkin_ws/src/abstract_msgs/msg/ActiveActors.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/abstract_msgs
)
_generate_msg_cpp(abstract_msgs
  "/home/lee_firefly/catkin_ws/src/abstract_msgs/msg/SceneQuery.msg"
  "${MSG_I_FLAGS}"
  "/home/lee_firefly/catkin_ws/src/abstract_msgs/msg/ActorQuery.msg;/home/lee_firefly/catkin_ws/src/abstract_msgs/msg/LayerQuery.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/abstract_msgs
)
_generate_msg_cpp(abstract_msgs
  "/home/lee_firefly/catkin_ws/src/abstract_msgs/msg/Query.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/abstract_msgs
)
_generate_msg_cpp(abstract_msgs
  "/home/lee_firefly/catkin_ws/src/abstract_msgs/msg/EventQuery.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/abstract_msgs
)
_generate_msg_cpp(abstract_msgs
  "/home/lee_firefly/catkin_ws/src/abstract_msgs/msg/LayerQuery.msg"
  "${MSG_I_FLAGS}"
  "/home/lee_firefly/catkin_ws/src/abstract_msgs/msg/ActorQuery.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/abstract_msgs
)
_generate_msg_cpp(abstract_msgs
  "/home/lee_firefly/catkin_ws/src/abstract_msgs/msg/EventSceneMap.msg"
  "${MSG_I_FLAGS}"
  "/home/lee_firefly/catkin_ws/src/abstract_msgs/msg/EventQuery.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/abstract_msgs
)
_generate_msg_cpp(abstract_msgs
  "/home/lee_firefly/catkin_ws/src/abstract_msgs/msg/ActorQuery.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/abstract_msgs
)
_generate_msg_cpp(abstract_msgs
  "/home/lee_firefly/catkin_ws/src/abstract_msgs/msg/EventResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/lee_firefly/catkin_ws/src/abstract_msgs/msg/UnifiedData.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/abstract_msgs
)
_generate_msg_cpp(abstract_msgs
  "/home/lee_firefly/catkin_ws/src/abstract_msgs/msg/UnifiedData.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/abstract_msgs
)
_generate_msg_cpp(abstract_msgs
  "/home/lee_firefly/catkin_ws/src/abstract_msgs/msg/StationData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/abstract_msgs
)

### Generating Services

### Generating Module File
_generate_module_cpp(abstract_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/abstract_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(abstract_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(abstract_msgs_generate_messages abstract_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/lee_firefly/catkin_ws/src/abstract_msgs/msg/QueryResult.msg" NAME_WE)
add_dependencies(abstract_msgs_generate_messages_cpp _abstract_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lee_firefly/catkin_ws/src/abstract_msgs/msg/ActiveActors.msg" NAME_WE)
add_dependencies(abstract_msgs_generate_messages_cpp _abstract_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lee_firefly/catkin_ws/src/abstract_msgs/msg/SceneQuery.msg" NAME_WE)
add_dependencies(abstract_msgs_generate_messages_cpp _abstract_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lee_firefly/catkin_ws/src/abstract_msgs/msg/Query.msg" NAME_WE)
add_dependencies(abstract_msgs_generate_messages_cpp _abstract_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lee_firefly/catkin_ws/src/abstract_msgs/msg/EventQuery.msg" NAME_WE)
add_dependencies(abstract_msgs_generate_messages_cpp _abstract_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lee_firefly/catkin_ws/src/abstract_msgs/msg/LayerQuery.msg" NAME_WE)
add_dependencies(abstract_msgs_generate_messages_cpp _abstract_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lee_firefly/catkin_ws/src/abstract_msgs/msg/EventSceneMap.msg" NAME_WE)
add_dependencies(abstract_msgs_generate_messages_cpp _abstract_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lee_firefly/catkin_ws/src/abstract_msgs/msg/ActorQuery.msg" NAME_WE)
add_dependencies(abstract_msgs_generate_messages_cpp _abstract_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lee_firefly/catkin_ws/src/abstract_msgs/msg/EventResult.msg" NAME_WE)
add_dependencies(abstract_msgs_generate_messages_cpp _abstract_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lee_firefly/catkin_ws/src/abstract_msgs/msg/UnifiedData.msg" NAME_WE)
add_dependencies(abstract_msgs_generate_messages_cpp _abstract_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lee_firefly/catkin_ws/src/abstract_msgs/msg/StationData.msg" NAME_WE)
add_dependencies(abstract_msgs_generate_messages_cpp _abstract_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(abstract_msgs_gencpp)
add_dependencies(abstract_msgs_gencpp abstract_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS abstract_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(abstract_msgs
  "/home/lee_firefly/catkin_ws/src/abstract_msgs/msg/QueryResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/lee_firefly/catkin_ws/src/abstract_msgs/msg/UnifiedData.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/abstract_msgs
)
_generate_msg_eus(abstract_msgs
  "/home/lee_firefly/catkin_ws/src/abstract_msgs/msg/ActiveActors.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/abstract_msgs
)
_generate_msg_eus(abstract_msgs
  "/home/lee_firefly/catkin_ws/src/abstract_msgs/msg/SceneQuery.msg"
  "${MSG_I_FLAGS}"
  "/home/lee_firefly/catkin_ws/src/abstract_msgs/msg/ActorQuery.msg;/home/lee_firefly/catkin_ws/src/abstract_msgs/msg/LayerQuery.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/abstract_msgs
)
_generate_msg_eus(abstract_msgs
  "/home/lee_firefly/catkin_ws/src/abstract_msgs/msg/Query.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/abstract_msgs
)
_generate_msg_eus(abstract_msgs
  "/home/lee_firefly/catkin_ws/src/abstract_msgs/msg/EventQuery.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/abstract_msgs
)
_generate_msg_eus(abstract_msgs
  "/home/lee_firefly/catkin_ws/src/abstract_msgs/msg/LayerQuery.msg"
  "${MSG_I_FLAGS}"
  "/home/lee_firefly/catkin_ws/src/abstract_msgs/msg/ActorQuery.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/abstract_msgs
)
_generate_msg_eus(abstract_msgs
  "/home/lee_firefly/catkin_ws/src/abstract_msgs/msg/EventSceneMap.msg"
  "${MSG_I_FLAGS}"
  "/home/lee_firefly/catkin_ws/src/abstract_msgs/msg/EventQuery.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/abstract_msgs
)
_generate_msg_eus(abstract_msgs
  "/home/lee_firefly/catkin_ws/src/abstract_msgs/msg/ActorQuery.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/abstract_msgs
)
_generate_msg_eus(abstract_msgs
  "/home/lee_firefly/catkin_ws/src/abstract_msgs/msg/EventResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/lee_firefly/catkin_ws/src/abstract_msgs/msg/UnifiedData.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/abstract_msgs
)
_generate_msg_eus(abstract_msgs
  "/home/lee_firefly/catkin_ws/src/abstract_msgs/msg/UnifiedData.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/abstract_msgs
)
_generate_msg_eus(abstract_msgs
  "/home/lee_firefly/catkin_ws/src/abstract_msgs/msg/StationData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/abstract_msgs
)

### Generating Services

### Generating Module File
_generate_module_eus(abstract_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/abstract_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(abstract_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(abstract_msgs_generate_messages abstract_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/lee_firefly/catkin_ws/src/abstract_msgs/msg/QueryResult.msg" NAME_WE)
add_dependencies(abstract_msgs_generate_messages_eus _abstract_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lee_firefly/catkin_ws/src/abstract_msgs/msg/ActiveActors.msg" NAME_WE)
add_dependencies(abstract_msgs_generate_messages_eus _abstract_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lee_firefly/catkin_ws/src/abstract_msgs/msg/SceneQuery.msg" NAME_WE)
add_dependencies(abstract_msgs_generate_messages_eus _abstract_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lee_firefly/catkin_ws/src/abstract_msgs/msg/Query.msg" NAME_WE)
add_dependencies(abstract_msgs_generate_messages_eus _abstract_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lee_firefly/catkin_ws/src/abstract_msgs/msg/EventQuery.msg" NAME_WE)
add_dependencies(abstract_msgs_generate_messages_eus _abstract_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lee_firefly/catkin_ws/src/abstract_msgs/msg/LayerQuery.msg" NAME_WE)
add_dependencies(abstract_msgs_generate_messages_eus _abstract_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lee_firefly/catkin_ws/src/abstract_msgs/msg/EventSceneMap.msg" NAME_WE)
add_dependencies(abstract_msgs_generate_messages_eus _abstract_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lee_firefly/catkin_ws/src/abstract_msgs/msg/ActorQuery.msg" NAME_WE)
add_dependencies(abstract_msgs_generate_messages_eus _abstract_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lee_firefly/catkin_ws/src/abstract_msgs/msg/EventResult.msg" NAME_WE)
add_dependencies(abstract_msgs_generate_messages_eus _abstract_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lee_firefly/catkin_ws/src/abstract_msgs/msg/UnifiedData.msg" NAME_WE)
add_dependencies(abstract_msgs_generate_messages_eus _abstract_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lee_firefly/catkin_ws/src/abstract_msgs/msg/StationData.msg" NAME_WE)
add_dependencies(abstract_msgs_generate_messages_eus _abstract_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(abstract_msgs_geneus)
add_dependencies(abstract_msgs_geneus abstract_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS abstract_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(abstract_msgs
  "/home/lee_firefly/catkin_ws/src/abstract_msgs/msg/QueryResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/lee_firefly/catkin_ws/src/abstract_msgs/msg/UnifiedData.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/abstract_msgs
)
_generate_msg_lisp(abstract_msgs
  "/home/lee_firefly/catkin_ws/src/abstract_msgs/msg/ActiveActors.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/abstract_msgs
)
_generate_msg_lisp(abstract_msgs
  "/home/lee_firefly/catkin_ws/src/abstract_msgs/msg/SceneQuery.msg"
  "${MSG_I_FLAGS}"
  "/home/lee_firefly/catkin_ws/src/abstract_msgs/msg/ActorQuery.msg;/home/lee_firefly/catkin_ws/src/abstract_msgs/msg/LayerQuery.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/abstract_msgs
)
_generate_msg_lisp(abstract_msgs
  "/home/lee_firefly/catkin_ws/src/abstract_msgs/msg/Query.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/abstract_msgs
)
_generate_msg_lisp(abstract_msgs
  "/home/lee_firefly/catkin_ws/src/abstract_msgs/msg/EventQuery.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/abstract_msgs
)
_generate_msg_lisp(abstract_msgs
  "/home/lee_firefly/catkin_ws/src/abstract_msgs/msg/LayerQuery.msg"
  "${MSG_I_FLAGS}"
  "/home/lee_firefly/catkin_ws/src/abstract_msgs/msg/ActorQuery.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/abstract_msgs
)
_generate_msg_lisp(abstract_msgs
  "/home/lee_firefly/catkin_ws/src/abstract_msgs/msg/EventSceneMap.msg"
  "${MSG_I_FLAGS}"
  "/home/lee_firefly/catkin_ws/src/abstract_msgs/msg/EventQuery.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/abstract_msgs
)
_generate_msg_lisp(abstract_msgs
  "/home/lee_firefly/catkin_ws/src/abstract_msgs/msg/ActorQuery.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/abstract_msgs
)
_generate_msg_lisp(abstract_msgs
  "/home/lee_firefly/catkin_ws/src/abstract_msgs/msg/EventResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/lee_firefly/catkin_ws/src/abstract_msgs/msg/UnifiedData.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/abstract_msgs
)
_generate_msg_lisp(abstract_msgs
  "/home/lee_firefly/catkin_ws/src/abstract_msgs/msg/UnifiedData.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/abstract_msgs
)
_generate_msg_lisp(abstract_msgs
  "/home/lee_firefly/catkin_ws/src/abstract_msgs/msg/StationData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/abstract_msgs
)

### Generating Services

### Generating Module File
_generate_module_lisp(abstract_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/abstract_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(abstract_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(abstract_msgs_generate_messages abstract_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/lee_firefly/catkin_ws/src/abstract_msgs/msg/QueryResult.msg" NAME_WE)
add_dependencies(abstract_msgs_generate_messages_lisp _abstract_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lee_firefly/catkin_ws/src/abstract_msgs/msg/ActiveActors.msg" NAME_WE)
add_dependencies(abstract_msgs_generate_messages_lisp _abstract_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lee_firefly/catkin_ws/src/abstract_msgs/msg/SceneQuery.msg" NAME_WE)
add_dependencies(abstract_msgs_generate_messages_lisp _abstract_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lee_firefly/catkin_ws/src/abstract_msgs/msg/Query.msg" NAME_WE)
add_dependencies(abstract_msgs_generate_messages_lisp _abstract_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lee_firefly/catkin_ws/src/abstract_msgs/msg/EventQuery.msg" NAME_WE)
add_dependencies(abstract_msgs_generate_messages_lisp _abstract_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lee_firefly/catkin_ws/src/abstract_msgs/msg/LayerQuery.msg" NAME_WE)
add_dependencies(abstract_msgs_generate_messages_lisp _abstract_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lee_firefly/catkin_ws/src/abstract_msgs/msg/EventSceneMap.msg" NAME_WE)
add_dependencies(abstract_msgs_generate_messages_lisp _abstract_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lee_firefly/catkin_ws/src/abstract_msgs/msg/ActorQuery.msg" NAME_WE)
add_dependencies(abstract_msgs_generate_messages_lisp _abstract_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lee_firefly/catkin_ws/src/abstract_msgs/msg/EventResult.msg" NAME_WE)
add_dependencies(abstract_msgs_generate_messages_lisp _abstract_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lee_firefly/catkin_ws/src/abstract_msgs/msg/UnifiedData.msg" NAME_WE)
add_dependencies(abstract_msgs_generate_messages_lisp _abstract_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lee_firefly/catkin_ws/src/abstract_msgs/msg/StationData.msg" NAME_WE)
add_dependencies(abstract_msgs_generate_messages_lisp _abstract_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(abstract_msgs_genlisp)
add_dependencies(abstract_msgs_genlisp abstract_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS abstract_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(abstract_msgs
  "/home/lee_firefly/catkin_ws/src/abstract_msgs/msg/QueryResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/lee_firefly/catkin_ws/src/abstract_msgs/msg/UnifiedData.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/abstract_msgs
)
_generate_msg_nodejs(abstract_msgs
  "/home/lee_firefly/catkin_ws/src/abstract_msgs/msg/ActiveActors.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/abstract_msgs
)
_generate_msg_nodejs(abstract_msgs
  "/home/lee_firefly/catkin_ws/src/abstract_msgs/msg/SceneQuery.msg"
  "${MSG_I_FLAGS}"
  "/home/lee_firefly/catkin_ws/src/abstract_msgs/msg/ActorQuery.msg;/home/lee_firefly/catkin_ws/src/abstract_msgs/msg/LayerQuery.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/abstract_msgs
)
_generate_msg_nodejs(abstract_msgs
  "/home/lee_firefly/catkin_ws/src/abstract_msgs/msg/Query.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/abstract_msgs
)
_generate_msg_nodejs(abstract_msgs
  "/home/lee_firefly/catkin_ws/src/abstract_msgs/msg/EventQuery.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/abstract_msgs
)
_generate_msg_nodejs(abstract_msgs
  "/home/lee_firefly/catkin_ws/src/abstract_msgs/msg/LayerQuery.msg"
  "${MSG_I_FLAGS}"
  "/home/lee_firefly/catkin_ws/src/abstract_msgs/msg/ActorQuery.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/abstract_msgs
)
_generate_msg_nodejs(abstract_msgs
  "/home/lee_firefly/catkin_ws/src/abstract_msgs/msg/EventSceneMap.msg"
  "${MSG_I_FLAGS}"
  "/home/lee_firefly/catkin_ws/src/abstract_msgs/msg/EventQuery.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/abstract_msgs
)
_generate_msg_nodejs(abstract_msgs
  "/home/lee_firefly/catkin_ws/src/abstract_msgs/msg/ActorQuery.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/abstract_msgs
)
_generate_msg_nodejs(abstract_msgs
  "/home/lee_firefly/catkin_ws/src/abstract_msgs/msg/EventResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/lee_firefly/catkin_ws/src/abstract_msgs/msg/UnifiedData.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/abstract_msgs
)
_generate_msg_nodejs(abstract_msgs
  "/home/lee_firefly/catkin_ws/src/abstract_msgs/msg/UnifiedData.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/abstract_msgs
)
_generate_msg_nodejs(abstract_msgs
  "/home/lee_firefly/catkin_ws/src/abstract_msgs/msg/StationData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/abstract_msgs
)

### Generating Services

### Generating Module File
_generate_module_nodejs(abstract_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/abstract_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(abstract_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(abstract_msgs_generate_messages abstract_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/lee_firefly/catkin_ws/src/abstract_msgs/msg/QueryResult.msg" NAME_WE)
add_dependencies(abstract_msgs_generate_messages_nodejs _abstract_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lee_firefly/catkin_ws/src/abstract_msgs/msg/ActiveActors.msg" NAME_WE)
add_dependencies(abstract_msgs_generate_messages_nodejs _abstract_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lee_firefly/catkin_ws/src/abstract_msgs/msg/SceneQuery.msg" NAME_WE)
add_dependencies(abstract_msgs_generate_messages_nodejs _abstract_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lee_firefly/catkin_ws/src/abstract_msgs/msg/Query.msg" NAME_WE)
add_dependencies(abstract_msgs_generate_messages_nodejs _abstract_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lee_firefly/catkin_ws/src/abstract_msgs/msg/EventQuery.msg" NAME_WE)
add_dependencies(abstract_msgs_generate_messages_nodejs _abstract_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lee_firefly/catkin_ws/src/abstract_msgs/msg/LayerQuery.msg" NAME_WE)
add_dependencies(abstract_msgs_generate_messages_nodejs _abstract_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lee_firefly/catkin_ws/src/abstract_msgs/msg/EventSceneMap.msg" NAME_WE)
add_dependencies(abstract_msgs_generate_messages_nodejs _abstract_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lee_firefly/catkin_ws/src/abstract_msgs/msg/ActorQuery.msg" NAME_WE)
add_dependencies(abstract_msgs_generate_messages_nodejs _abstract_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lee_firefly/catkin_ws/src/abstract_msgs/msg/EventResult.msg" NAME_WE)
add_dependencies(abstract_msgs_generate_messages_nodejs _abstract_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lee_firefly/catkin_ws/src/abstract_msgs/msg/UnifiedData.msg" NAME_WE)
add_dependencies(abstract_msgs_generate_messages_nodejs _abstract_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lee_firefly/catkin_ws/src/abstract_msgs/msg/StationData.msg" NAME_WE)
add_dependencies(abstract_msgs_generate_messages_nodejs _abstract_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(abstract_msgs_gennodejs)
add_dependencies(abstract_msgs_gennodejs abstract_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS abstract_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(abstract_msgs
  "/home/lee_firefly/catkin_ws/src/abstract_msgs/msg/QueryResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/lee_firefly/catkin_ws/src/abstract_msgs/msg/UnifiedData.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/abstract_msgs
)
_generate_msg_py(abstract_msgs
  "/home/lee_firefly/catkin_ws/src/abstract_msgs/msg/ActiveActors.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/abstract_msgs
)
_generate_msg_py(abstract_msgs
  "/home/lee_firefly/catkin_ws/src/abstract_msgs/msg/SceneQuery.msg"
  "${MSG_I_FLAGS}"
  "/home/lee_firefly/catkin_ws/src/abstract_msgs/msg/ActorQuery.msg;/home/lee_firefly/catkin_ws/src/abstract_msgs/msg/LayerQuery.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/abstract_msgs
)
_generate_msg_py(abstract_msgs
  "/home/lee_firefly/catkin_ws/src/abstract_msgs/msg/Query.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/abstract_msgs
)
_generate_msg_py(abstract_msgs
  "/home/lee_firefly/catkin_ws/src/abstract_msgs/msg/EventQuery.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/abstract_msgs
)
_generate_msg_py(abstract_msgs
  "/home/lee_firefly/catkin_ws/src/abstract_msgs/msg/LayerQuery.msg"
  "${MSG_I_FLAGS}"
  "/home/lee_firefly/catkin_ws/src/abstract_msgs/msg/ActorQuery.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/abstract_msgs
)
_generate_msg_py(abstract_msgs
  "/home/lee_firefly/catkin_ws/src/abstract_msgs/msg/EventSceneMap.msg"
  "${MSG_I_FLAGS}"
  "/home/lee_firefly/catkin_ws/src/abstract_msgs/msg/EventQuery.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/abstract_msgs
)
_generate_msg_py(abstract_msgs
  "/home/lee_firefly/catkin_ws/src/abstract_msgs/msg/ActorQuery.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/abstract_msgs
)
_generate_msg_py(abstract_msgs
  "/home/lee_firefly/catkin_ws/src/abstract_msgs/msg/EventResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/lee_firefly/catkin_ws/src/abstract_msgs/msg/UnifiedData.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/abstract_msgs
)
_generate_msg_py(abstract_msgs
  "/home/lee_firefly/catkin_ws/src/abstract_msgs/msg/UnifiedData.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/abstract_msgs
)
_generate_msg_py(abstract_msgs
  "/home/lee_firefly/catkin_ws/src/abstract_msgs/msg/StationData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/abstract_msgs
)

### Generating Services

### Generating Module File
_generate_module_py(abstract_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/abstract_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(abstract_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(abstract_msgs_generate_messages abstract_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/lee_firefly/catkin_ws/src/abstract_msgs/msg/QueryResult.msg" NAME_WE)
add_dependencies(abstract_msgs_generate_messages_py _abstract_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lee_firefly/catkin_ws/src/abstract_msgs/msg/ActiveActors.msg" NAME_WE)
add_dependencies(abstract_msgs_generate_messages_py _abstract_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lee_firefly/catkin_ws/src/abstract_msgs/msg/SceneQuery.msg" NAME_WE)
add_dependencies(abstract_msgs_generate_messages_py _abstract_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lee_firefly/catkin_ws/src/abstract_msgs/msg/Query.msg" NAME_WE)
add_dependencies(abstract_msgs_generate_messages_py _abstract_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lee_firefly/catkin_ws/src/abstract_msgs/msg/EventQuery.msg" NAME_WE)
add_dependencies(abstract_msgs_generate_messages_py _abstract_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lee_firefly/catkin_ws/src/abstract_msgs/msg/LayerQuery.msg" NAME_WE)
add_dependencies(abstract_msgs_generate_messages_py _abstract_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lee_firefly/catkin_ws/src/abstract_msgs/msg/EventSceneMap.msg" NAME_WE)
add_dependencies(abstract_msgs_generate_messages_py _abstract_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lee_firefly/catkin_ws/src/abstract_msgs/msg/ActorQuery.msg" NAME_WE)
add_dependencies(abstract_msgs_generate_messages_py _abstract_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lee_firefly/catkin_ws/src/abstract_msgs/msg/EventResult.msg" NAME_WE)
add_dependencies(abstract_msgs_generate_messages_py _abstract_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lee_firefly/catkin_ws/src/abstract_msgs/msg/UnifiedData.msg" NAME_WE)
add_dependencies(abstract_msgs_generate_messages_py _abstract_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lee_firefly/catkin_ws/src/abstract_msgs/msg/StationData.msg" NAME_WE)
add_dependencies(abstract_msgs_generate_messages_py _abstract_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(abstract_msgs_genpy)
add_dependencies(abstract_msgs_genpy abstract_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS abstract_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/abstract_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/abstract_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(abstract_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(abstract_msgs_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(abstract_msgs_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/abstract_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/abstract_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(abstract_msgs_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET sensor_msgs_generate_messages_eus)
  add_dependencies(abstract_msgs_generate_messages_eus sensor_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(abstract_msgs_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/abstract_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/abstract_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(abstract_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET sensor_msgs_generate_messages_lisp)
  add_dependencies(abstract_msgs_generate_messages_lisp sensor_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(abstract_msgs_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/abstract_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/abstract_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(abstract_msgs_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET sensor_msgs_generate_messages_nodejs)
  add_dependencies(abstract_msgs_generate_messages_nodejs sensor_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(abstract_msgs_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/abstract_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/abstract_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/abstract_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(abstract_msgs_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(abstract_msgs_generate_messages_py sensor_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(abstract_msgs_generate_messages_py geometry_msgs_generate_messages_py)
endif()
