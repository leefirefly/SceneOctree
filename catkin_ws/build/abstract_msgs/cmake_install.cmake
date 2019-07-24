# Install script for directory: /home/lee_firefly/catkin_ws/src/abstract_msgs

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/lee_firefly/catkin_ws/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/abstract_msgs/msg" TYPE FILE FILES
    "/home/lee_firefly/catkin_ws/src/abstract_msgs/msg/UnifiedData.msg"
    "/home/lee_firefly/catkin_ws/src/abstract_msgs/msg/Query.msg"
    "/home/lee_firefly/catkin_ws/src/abstract_msgs/msg/ActorQuery.msg"
    "/home/lee_firefly/catkin_ws/src/abstract_msgs/msg/LayerQuery.msg"
    "/home/lee_firefly/catkin_ws/src/abstract_msgs/msg/SceneQuery.msg"
    "/home/lee_firefly/catkin_ws/src/abstract_msgs/msg/QueryResult.msg"
    "/home/lee_firefly/catkin_ws/src/abstract_msgs/msg/StationData.msg"
    "/home/lee_firefly/catkin_ws/src/abstract_msgs/msg/ActiveActors.msg"
    "/home/lee_firefly/catkin_ws/src/abstract_msgs/msg/EventResult.msg"
    "/home/lee_firefly/catkin_ws/src/abstract_msgs/msg/EventSceneMap.msg"
    "/home/lee_firefly/catkin_ws/src/abstract_msgs/msg/EventQuery.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/abstract_msgs/cmake" TYPE FILE FILES "/home/lee_firefly/catkin_ws/build/abstract_msgs/catkin_generated/installspace/abstract_msgs-msg-paths.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/lee_firefly/catkin_ws/devel/include/abstract_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/lee_firefly/catkin_ws/devel/share/roseus/ros/abstract_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/lee_firefly/catkin_ws/devel/share/common-lisp/ros/abstract_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/lee_firefly/catkin_ws/devel/share/gennodejs/ros/abstract_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  execute_process(COMMAND "/usr/bin/python" -m compileall "/home/lee_firefly/catkin_ws/devel/lib/python2.7/dist-packages/abstract_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/lee_firefly/catkin_ws/devel/lib/python2.7/dist-packages/abstract_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/lee_firefly/catkin_ws/build/abstract_msgs/catkin_generated/installspace/abstract_msgs.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/abstract_msgs/cmake" TYPE FILE FILES "/home/lee_firefly/catkin_ws/build/abstract_msgs/catkin_generated/installspace/abstract_msgs-msg-extras.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/abstract_msgs/cmake" TYPE FILE FILES
    "/home/lee_firefly/catkin_ws/build/abstract_msgs/catkin_generated/installspace/abstract_msgsConfig.cmake"
    "/home/lee_firefly/catkin_ws/build/abstract_msgs/catkin_generated/installspace/abstract_msgsConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/abstract_msgs" TYPE FILE FILES "/home/lee_firefly/catkin_ws/src/abstract_msgs/package.xml")
endif()

