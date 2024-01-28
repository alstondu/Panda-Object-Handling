# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "cw1_team_10: 0 messages, 1 services")

set(MSG_I_FLAGS "-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(cw1_team_10_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/alston/Automated-Object-Handling/src/cw1_team_10/srv/example.srv" NAME_WE)
add_custom_target(_cw1_team_10_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cw1_team_10" "/home/alston/Automated-Object-Handling/src/cw1_team_10/srv/example.srv" "geometry_msgs/Point:geometry_msgs/Pose:geometry_msgs/Quaternion"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(cw1_team_10
  "/home/alston/Automated-Object-Handling/src/cw1_team_10/srv/example.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cw1_team_10
)

### Generating Module File
_generate_module_cpp(cw1_team_10
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cw1_team_10
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(cw1_team_10_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(cw1_team_10_generate_messages cw1_team_10_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/alston/Automated-Object-Handling/src/cw1_team_10/srv/example.srv" NAME_WE)
add_dependencies(cw1_team_10_generate_messages_cpp _cw1_team_10_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(cw1_team_10_gencpp)
add_dependencies(cw1_team_10_gencpp cw1_team_10_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS cw1_team_10_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services
_generate_srv_eus(cw1_team_10
  "/home/alston/Automated-Object-Handling/src/cw1_team_10/srv/example.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cw1_team_10
)

### Generating Module File
_generate_module_eus(cw1_team_10
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cw1_team_10
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(cw1_team_10_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(cw1_team_10_generate_messages cw1_team_10_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/alston/Automated-Object-Handling/src/cw1_team_10/srv/example.srv" NAME_WE)
add_dependencies(cw1_team_10_generate_messages_eus _cw1_team_10_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(cw1_team_10_geneus)
add_dependencies(cw1_team_10_geneus cw1_team_10_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS cw1_team_10_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(cw1_team_10
  "/home/alston/Automated-Object-Handling/src/cw1_team_10/srv/example.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cw1_team_10
)

### Generating Module File
_generate_module_lisp(cw1_team_10
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cw1_team_10
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(cw1_team_10_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(cw1_team_10_generate_messages cw1_team_10_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/alston/Automated-Object-Handling/src/cw1_team_10/srv/example.srv" NAME_WE)
add_dependencies(cw1_team_10_generate_messages_lisp _cw1_team_10_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(cw1_team_10_genlisp)
add_dependencies(cw1_team_10_genlisp cw1_team_10_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS cw1_team_10_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages

### Generating Services
_generate_srv_nodejs(cw1_team_10
  "/home/alston/Automated-Object-Handling/src/cw1_team_10/srv/example.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cw1_team_10
)

### Generating Module File
_generate_module_nodejs(cw1_team_10
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cw1_team_10
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(cw1_team_10_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(cw1_team_10_generate_messages cw1_team_10_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/alston/Automated-Object-Handling/src/cw1_team_10/srv/example.srv" NAME_WE)
add_dependencies(cw1_team_10_generate_messages_nodejs _cw1_team_10_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(cw1_team_10_gennodejs)
add_dependencies(cw1_team_10_gennodejs cw1_team_10_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS cw1_team_10_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(cw1_team_10
  "/home/alston/Automated-Object-Handling/src/cw1_team_10/srv/example.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cw1_team_10
)

### Generating Module File
_generate_module_py(cw1_team_10
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cw1_team_10
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(cw1_team_10_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(cw1_team_10_generate_messages cw1_team_10_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/alston/Automated-Object-Handling/src/cw1_team_10/srv/example.srv" NAME_WE)
add_dependencies(cw1_team_10_generate_messages_py _cw1_team_10_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(cw1_team_10_genpy)
add_dependencies(cw1_team_10_genpy cw1_team_10_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS cw1_team_10_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cw1_team_10)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cw1_team_10
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(cw1_team_10_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(cw1_team_10_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cw1_team_10)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cw1_team_10
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(cw1_team_10_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(cw1_team_10_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cw1_team_10)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cw1_team_10
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(cw1_team_10_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(cw1_team_10_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cw1_team_10)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cw1_team_10
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(cw1_team_10_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(cw1_team_10_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cw1_team_10)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cw1_team_10\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cw1_team_10
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(cw1_team_10_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(cw1_team_10_generate_messages_py geometry_msgs_generate_messages_py)
endif()
