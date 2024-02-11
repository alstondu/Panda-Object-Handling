# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "panda_world_spawner: 0 messages, 4 services")

set(MSG_I_FLAGS "-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(panda_world_spawner_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/alston/Panda-Object-Handling/src/panda_world_spawner/srv/TaskSetup.srv" NAME_WE)
add_custom_target(_panda_world_spawner_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "panda_world_spawner" "/home/alston/Panda-Object-Handling/src/panda_world_spawner/srv/TaskSetup.srv" ""
)

get_filename_component(_filename "/home/alston/Panda-Object-Handling/src/panda_world_spawner/srv/Task1Service.srv" NAME_WE)
add_custom_target(_panda_world_spawner_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "panda_world_spawner" "/home/alston/Panda-Object-Handling/src/panda_world_spawner/srv/Task1Service.srv" "geometry_msgs/PoseStamped:geometry_msgs/Point:geometry_msgs/Pose:geometry_msgs/Quaternion:geometry_msgs/PointStamped:std_msgs/Header"
)

get_filename_component(_filename "/home/alston/Panda-Object-Handling/src/panda_world_spawner/srv/Task2Service.srv" NAME_WE)
add_custom_target(_panda_world_spawner_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "panda_world_spawner" "/home/alston/Panda-Object-Handling/src/panda_world_spawner/srv/Task2Service.srv" "geometry_msgs/PointStamped:geometry_msgs/Point:std_msgs/Header"
)

get_filename_component(_filename "/home/alston/Panda-Object-Handling/src/panda_world_spawner/srv/Task3Service.srv" NAME_WE)
add_custom_target(_panda_world_spawner_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "panda_world_spawner" "/home/alston/Panda-Object-Handling/src/panda_world_spawner/srv/Task3Service.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(panda_world_spawner
  "/home/alston/Panda-Object-Handling/src/panda_world_spawner/srv/TaskSetup.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/panda_world_spawner
)
_generate_srv_cpp(panda_world_spawner
  "/home/alston/Panda-Object-Handling/src/panda_world_spawner/srv/Task1Service.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PointStamped.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/panda_world_spawner
)
_generate_srv_cpp(panda_world_spawner
  "/home/alston/Panda-Object-Handling/src/panda_world_spawner/srv/Task2Service.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PointStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/panda_world_spawner
)
_generate_srv_cpp(panda_world_spawner
  "/home/alston/Panda-Object-Handling/src/panda_world_spawner/srv/Task3Service.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/panda_world_spawner
)

### Generating Module File
_generate_module_cpp(panda_world_spawner
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/panda_world_spawner
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(panda_world_spawner_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(panda_world_spawner_generate_messages panda_world_spawner_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/alston/Panda-Object-Handling/src/panda_world_spawner/srv/TaskSetup.srv" NAME_WE)
add_dependencies(panda_world_spawner_generate_messages_cpp _panda_world_spawner_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/alston/Panda-Object-Handling/src/panda_world_spawner/srv/Task1Service.srv" NAME_WE)
add_dependencies(panda_world_spawner_generate_messages_cpp _panda_world_spawner_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/alston/Panda-Object-Handling/src/panda_world_spawner/srv/Task2Service.srv" NAME_WE)
add_dependencies(panda_world_spawner_generate_messages_cpp _panda_world_spawner_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/alston/Panda-Object-Handling/src/panda_world_spawner/srv/Task3Service.srv" NAME_WE)
add_dependencies(panda_world_spawner_generate_messages_cpp _panda_world_spawner_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(panda_world_spawner_gencpp)
add_dependencies(panda_world_spawner_gencpp panda_world_spawner_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS panda_world_spawner_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services
_generate_srv_eus(panda_world_spawner
  "/home/alston/Panda-Object-Handling/src/panda_world_spawner/srv/TaskSetup.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/panda_world_spawner
)
_generate_srv_eus(panda_world_spawner
  "/home/alston/Panda-Object-Handling/src/panda_world_spawner/srv/Task1Service.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PointStamped.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/panda_world_spawner
)
_generate_srv_eus(panda_world_spawner
  "/home/alston/Panda-Object-Handling/src/panda_world_spawner/srv/Task2Service.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PointStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/panda_world_spawner
)
_generate_srv_eus(panda_world_spawner
  "/home/alston/Panda-Object-Handling/src/panda_world_spawner/srv/Task3Service.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/panda_world_spawner
)

### Generating Module File
_generate_module_eus(panda_world_spawner
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/panda_world_spawner
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(panda_world_spawner_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(panda_world_spawner_generate_messages panda_world_spawner_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/alston/Panda-Object-Handling/src/panda_world_spawner/srv/TaskSetup.srv" NAME_WE)
add_dependencies(panda_world_spawner_generate_messages_eus _panda_world_spawner_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/alston/Panda-Object-Handling/src/panda_world_spawner/srv/Task1Service.srv" NAME_WE)
add_dependencies(panda_world_spawner_generate_messages_eus _panda_world_spawner_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/alston/Panda-Object-Handling/src/panda_world_spawner/srv/Task2Service.srv" NAME_WE)
add_dependencies(panda_world_spawner_generate_messages_eus _panda_world_spawner_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/alston/Panda-Object-Handling/src/panda_world_spawner/srv/Task3Service.srv" NAME_WE)
add_dependencies(panda_world_spawner_generate_messages_eus _panda_world_spawner_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(panda_world_spawner_geneus)
add_dependencies(panda_world_spawner_geneus panda_world_spawner_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS panda_world_spawner_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(panda_world_spawner
  "/home/alston/Panda-Object-Handling/src/panda_world_spawner/srv/TaskSetup.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/panda_world_spawner
)
_generate_srv_lisp(panda_world_spawner
  "/home/alston/Panda-Object-Handling/src/panda_world_spawner/srv/Task1Service.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PointStamped.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/panda_world_spawner
)
_generate_srv_lisp(panda_world_spawner
  "/home/alston/Panda-Object-Handling/src/panda_world_spawner/srv/Task2Service.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PointStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/panda_world_spawner
)
_generate_srv_lisp(panda_world_spawner
  "/home/alston/Panda-Object-Handling/src/panda_world_spawner/srv/Task3Service.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/panda_world_spawner
)

### Generating Module File
_generate_module_lisp(panda_world_spawner
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/panda_world_spawner
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(panda_world_spawner_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(panda_world_spawner_generate_messages panda_world_spawner_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/alston/Panda-Object-Handling/src/panda_world_spawner/srv/TaskSetup.srv" NAME_WE)
add_dependencies(panda_world_spawner_generate_messages_lisp _panda_world_spawner_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/alston/Panda-Object-Handling/src/panda_world_spawner/srv/Task1Service.srv" NAME_WE)
add_dependencies(panda_world_spawner_generate_messages_lisp _panda_world_spawner_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/alston/Panda-Object-Handling/src/panda_world_spawner/srv/Task2Service.srv" NAME_WE)
add_dependencies(panda_world_spawner_generate_messages_lisp _panda_world_spawner_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/alston/Panda-Object-Handling/src/panda_world_spawner/srv/Task3Service.srv" NAME_WE)
add_dependencies(panda_world_spawner_generate_messages_lisp _panda_world_spawner_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(panda_world_spawner_genlisp)
add_dependencies(panda_world_spawner_genlisp panda_world_spawner_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS panda_world_spawner_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages

### Generating Services
_generate_srv_nodejs(panda_world_spawner
  "/home/alston/Panda-Object-Handling/src/panda_world_spawner/srv/TaskSetup.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/panda_world_spawner
)
_generate_srv_nodejs(panda_world_spawner
  "/home/alston/Panda-Object-Handling/src/panda_world_spawner/srv/Task1Service.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PointStamped.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/panda_world_spawner
)
_generate_srv_nodejs(panda_world_spawner
  "/home/alston/Panda-Object-Handling/src/panda_world_spawner/srv/Task2Service.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PointStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/panda_world_spawner
)
_generate_srv_nodejs(panda_world_spawner
  "/home/alston/Panda-Object-Handling/src/panda_world_spawner/srv/Task3Service.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/panda_world_spawner
)

### Generating Module File
_generate_module_nodejs(panda_world_spawner
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/panda_world_spawner
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(panda_world_spawner_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(panda_world_spawner_generate_messages panda_world_spawner_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/alston/Panda-Object-Handling/src/panda_world_spawner/srv/TaskSetup.srv" NAME_WE)
add_dependencies(panda_world_spawner_generate_messages_nodejs _panda_world_spawner_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/alston/Panda-Object-Handling/src/panda_world_spawner/srv/Task1Service.srv" NAME_WE)
add_dependencies(panda_world_spawner_generate_messages_nodejs _panda_world_spawner_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/alston/Panda-Object-Handling/src/panda_world_spawner/srv/Task2Service.srv" NAME_WE)
add_dependencies(panda_world_spawner_generate_messages_nodejs _panda_world_spawner_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/alston/Panda-Object-Handling/src/panda_world_spawner/srv/Task3Service.srv" NAME_WE)
add_dependencies(panda_world_spawner_generate_messages_nodejs _panda_world_spawner_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(panda_world_spawner_gennodejs)
add_dependencies(panda_world_spawner_gennodejs panda_world_spawner_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS panda_world_spawner_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(panda_world_spawner
  "/home/alston/Panda-Object-Handling/src/panda_world_spawner/srv/TaskSetup.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/panda_world_spawner
)
_generate_srv_py(panda_world_spawner
  "/home/alston/Panda-Object-Handling/src/panda_world_spawner/srv/Task1Service.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PointStamped.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/panda_world_spawner
)
_generate_srv_py(panda_world_spawner
  "/home/alston/Panda-Object-Handling/src/panda_world_spawner/srv/Task2Service.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PointStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/panda_world_spawner
)
_generate_srv_py(panda_world_spawner
  "/home/alston/Panda-Object-Handling/src/panda_world_spawner/srv/Task3Service.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/panda_world_spawner
)

### Generating Module File
_generate_module_py(panda_world_spawner
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/panda_world_spawner
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(panda_world_spawner_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(panda_world_spawner_generate_messages panda_world_spawner_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/alston/Panda-Object-Handling/src/panda_world_spawner/srv/TaskSetup.srv" NAME_WE)
add_dependencies(panda_world_spawner_generate_messages_py _panda_world_spawner_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/alston/Panda-Object-Handling/src/panda_world_spawner/srv/Task1Service.srv" NAME_WE)
add_dependencies(panda_world_spawner_generate_messages_py _panda_world_spawner_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/alston/Panda-Object-Handling/src/panda_world_spawner/srv/Task2Service.srv" NAME_WE)
add_dependencies(panda_world_spawner_generate_messages_py _panda_world_spawner_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/alston/Panda-Object-Handling/src/panda_world_spawner/srv/Task3Service.srv" NAME_WE)
add_dependencies(panda_world_spawner_generate_messages_py _panda_world_spawner_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(panda_world_spawner_genpy)
add_dependencies(panda_world_spawner_genpy panda_world_spawner_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS panda_world_spawner_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/panda_world_spawner)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/panda_world_spawner
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(panda_world_spawner_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(panda_world_spawner_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/panda_world_spawner)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/panda_world_spawner
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(panda_world_spawner_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(panda_world_spawner_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/panda_world_spawner)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/panda_world_spawner
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(panda_world_spawner_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(panda_world_spawner_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/panda_world_spawner)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/panda_world_spawner
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(panda_world_spawner_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(panda_world_spawner_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/panda_world_spawner)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/panda_world_spawner\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/panda_world_spawner
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(panda_world_spawner_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(panda_world_spawner_generate_messages_py geometry_msgs_generate_messages_py)
endif()
