# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "moveit_solution: 0 messages, 5 services")

set(MSG_I_FLAGS "-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(moveit_solution_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/alston/Automated-Object-Handling/src/labs/moveit_solution/srv/set_arm.srv" NAME_WE)
add_custom_target(_moveit_solution_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "moveit_solution" "/home/alston/Automated-Object-Handling/src/labs/moveit_solution/srv/set_arm.srv" "geometry_msgs/Point:geometry_msgs/Pose:geometry_msgs/Quaternion"
)

get_filename_component(_filename "/home/alston/Automated-Object-Handling/src/labs/moveit_solution/srv/set_gripper.srv" NAME_WE)
add_custom_target(_moveit_solution_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "moveit_solution" "/home/alston/Automated-Object-Handling/src/labs/moveit_solution/srv/set_gripper.srv" ""
)

get_filename_component(_filename "/home/alston/Automated-Object-Handling/src/labs/moveit_solution/srv/add_collision.srv" NAME_WE)
add_custom_target(_moveit_solution_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "moveit_solution" "/home/alston/Automated-Object-Handling/src/labs/moveit_solution/srv/add_collision.srv" "geometry_msgs/Point:geometry_msgs/Vector3:geometry_msgs/Quaternion"
)

get_filename_component(_filename "/home/alston/Automated-Object-Handling/src/labs/moveit_solution/srv/remove_collision.srv" NAME_WE)
add_custom_target(_moveit_solution_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "moveit_solution" "/home/alston/Automated-Object-Handling/src/labs/moveit_solution/srv/remove_collision.srv" ""
)

get_filename_component(_filename "/home/alston/Automated-Object-Handling/src/labs/moveit_solution/srv/pick.srv" NAME_WE)
add_custom_target(_moveit_solution_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "moveit_solution" "/home/alston/Automated-Object-Handling/src/labs/moveit_solution/srv/pick.srv" "geometry_msgs/Point"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(moveit_solution
  "/home/alston/Automated-Object-Handling/src/labs/moveit_solution/srv/set_arm.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/moveit_solution
)
_generate_srv_cpp(moveit_solution
  "/home/alston/Automated-Object-Handling/src/labs/moveit_solution/srv/set_gripper.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/moveit_solution
)
_generate_srv_cpp(moveit_solution
  "/home/alston/Automated-Object-Handling/src/labs/moveit_solution/srv/add_collision.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/moveit_solution
)
_generate_srv_cpp(moveit_solution
  "/home/alston/Automated-Object-Handling/src/labs/moveit_solution/srv/remove_collision.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/moveit_solution
)
_generate_srv_cpp(moveit_solution
  "/home/alston/Automated-Object-Handling/src/labs/moveit_solution/srv/pick.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/moveit_solution
)

### Generating Module File
_generate_module_cpp(moveit_solution
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/moveit_solution
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(moveit_solution_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(moveit_solution_generate_messages moveit_solution_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/alston/Automated-Object-Handling/src/labs/moveit_solution/srv/set_arm.srv" NAME_WE)
add_dependencies(moveit_solution_generate_messages_cpp _moveit_solution_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/alston/Automated-Object-Handling/src/labs/moveit_solution/srv/set_gripper.srv" NAME_WE)
add_dependencies(moveit_solution_generate_messages_cpp _moveit_solution_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/alston/Automated-Object-Handling/src/labs/moveit_solution/srv/add_collision.srv" NAME_WE)
add_dependencies(moveit_solution_generate_messages_cpp _moveit_solution_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/alston/Automated-Object-Handling/src/labs/moveit_solution/srv/remove_collision.srv" NAME_WE)
add_dependencies(moveit_solution_generate_messages_cpp _moveit_solution_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/alston/Automated-Object-Handling/src/labs/moveit_solution/srv/pick.srv" NAME_WE)
add_dependencies(moveit_solution_generate_messages_cpp _moveit_solution_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(moveit_solution_gencpp)
add_dependencies(moveit_solution_gencpp moveit_solution_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS moveit_solution_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services
_generate_srv_eus(moveit_solution
  "/home/alston/Automated-Object-Handling/src/labs/moveit_solution/srv/set_arm.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/moveit_solution
)
_generate_srv_eus(moveit_solution
  "/home/alston/Automated-Object-Handling/src/labs/moveit_solution/srv/set_gripper.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/moveit_solution
)
_generate_srv_eus(moveit_solution
  "/home/alston/Automated-Object-Handling/src/labs/moveit_solution/srv/add_collision.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/moveit_solution
)
_generate_srv_eus(moveit_solution
  "/home/alston/Automated-Object-Handling/src/labs/moveit_solution/srv/remove_collision.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/moveit_solution
)
_generate_srv_eus(moveit_solution
  "/home/alston/Automated-Object-Handling/src/labs/moveit_solution/srv/pick.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/moveit_solution
)

### Generating Module File
_generate_module_eus(moveit_solution
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/moveit_solution
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(moveit_solution_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(moveit_solution_generate_messages moveit_solution_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/alston/Automated-Object-Handling/src/labs/moveit_solution/srv/set_arm.srv" NAME_WE)
add_dependencies(moveit_solution_generate_messages_eus _moveit_solution_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/alston/Automated-Object-Handling/src/labs/moveit_solution/srv/set_gripper.srv" NAME_WE)
add_dependencies(moveit_solution_generate_messages_eus _moveit_solution_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/alston/Automated-Object-Handling/src/labs/moveit_solution/srv/add_collision.srv" NAME_WE)
add_dependencies(moveit_solution_generate_messages_eus _moveit_solution_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/alston/Automated-Object-Handling/src/labs/moveit_solution/srv/remove_collision.srv" NAME_WE)
add_dependencies(moveit_solution_generate_messages_eus _moveit_solution_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/alston/Automated-Object-Handling/src/labs/moveit_solution/srv/pick.srv" NAME_WE)
add_dependencies(moveit_solution_generate_messages_eus _moveit_solution_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(moveit_solution_geneus)
add_dependencies(moveit_solution_geneus moveit_solution_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS moveit_solution_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(moveit_solution
  "/home/alston/Automated-Object-Handling/src/labs/moveit_solution/srv/set_arm.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/moveit_solution
)
_generate_srv_lisp(moveit_solution
  "/home/alston/Automated-Object-Handling/src/labs/moveit_solution/srv/set_gripper.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/moveit_solution
)
_generate_srv_lisp(moveit_solution
  "/home/alston/Automated-Object-Handling/src/labs/moveit_solution/srv/add_collision.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/moveit_solution
)
_generate_srv_lisp(moveit_solution
  "/home/alston/Automated-Object-Handling/src/labs/moveit_solution/srv/remove_collision.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/moveit_solution
)
_generate_srv_lisp(moveit_solution
  "/home/alston/Automated-Object-Handling/src/labs/moveit_solution/srv/pick.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/moveit_solution
)

### Generating Module File
_generate_module_lisp(moveit_solution
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/moveit_solution
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(moveit_solution_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(moveit_solution_generate_messages moveit_solution_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/alston/Automated-Object-Handling/src/labs/moveit_solution/srv/set_arm.srv" NAME_WE)
add_dependencies(moveit_solution_generate_messages_lisp _moveit_solution_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/alston/Automated-Object-Handling/src/labs/moveit_solution/srv/set_gripper.srv" NAME_WE)
add_dependencies(moveit_solution_generate_messages_lisp _moveit_solution_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/alston/Automated-Object-Handling/src/labs/moveit_solution/srv/add_collision.srv" NAME_WE)
add_dependencies(moveit_solution_generate_messages_lisp _moveit_solution_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/alston/Automated-Object-Handling/src/labs/moveit_solution/srv/remove_collision.srv" NAME_WE)
add_dependencies(moveit_solution_generate_messages_lisp _moveit_solution_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/alston/Automated-Object-Handling/src/labs/moveit_solution/srv/pick.srv" NAME_WE)
add_dependencies(moveit_solution_generate_messages_lisp _moveit_solution_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(moveit_solution_genlisp)
add_dependencies(moveit_solution_genlisp moveit_solution_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS moveit_solution_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages

### Generating Services
_generate_srv_nodejs(moveit_solution
  "/home/alston/Automated-Object-Handling/src/labs/moveit_solution/srv/set_arm.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/moveit_solution
)
_generate_srv_nodejs(moveit_solution
  "/home/alston/Automated-Object-Handling/src/labs/moveit_solution/srv/set_gripper.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/moveit_solution
)
_generate_srv_nodejs(moveit_solution
  "/home/alston/Automated-Object-Handling/src/labs/moveit_solution/srv/add_collision.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/moveit_solution
)
_generate_srv_nodejs(moveit_solution
  "/home/alston/Automated-Object-Handling/src/labs/moveit_solution/srv/remove_collision.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/moveit_solution
)
_generate_srv_nodejs(moveit_solution
  "/home/alston/Automated-Object-Handling/src/labs/moveit_solution/srv/pick.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/moveit_solution
)

### Generating Module File
_generate_module_nodejs(moveit_solution
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/moveit_solution
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(moveit_solution_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(moveit_solution_generate_messages moveit_solution_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/alston/Automated-Object-Handling/src/labs/moveit_solution/srv/set_arm.srv" NAME_WE)
add_dependencies(moveit_solution_generate_messages_nodejs _moveit_solution_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/alston/Automated-Object-Handling/src/labs/moveit_solution/srv/set_gripper.srv" NAME_WE)
add_dependencies(moveit_solution_generate_messages_nodejs _moveit_solution_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/alston/Automated-Object-Handling/src/labs/moveit_solution/srv/add_collision.srv" NAME_WE)
add_dependencies(moveit_solution_generate_messages_nodejs _moveit_solution_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/alston/Automated-Object-Handling/src/labs/moveit_solution/srv/remove_collision.srv" NAME_WE)
add_dependencies(moveit_solution_generate_messages_nodejs _moveit_solution_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/alston/Automated-Object-Handling/src/labs/moveit_solution/srv/pick.srv" NAME_WE)
add_dependencies(moveit_solution_generate_messages_nodejs _moveit_solution_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(moveit_solution_gennodejs)
add_dependencies(moveit_solution_gennodejs moveit_solution_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS moveit_solution_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(moveit_solution
  "/home/alston/Automated-Object-Handling/src/labs/moveit_solution/srv/set_arm.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/moveit_solution
)
_generate_srv_py(moveit_solution
  "/home/alston/Automated-Object-Handling/src/labs/moveit_solution/srv/set_gripper.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/moveit_solution
)
_generate_srv_py(moveit_solution
  "/home/alston/Automated-Object-Handling/src/labs/moveit_solution/srv/add_collision.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/moveit_solution
)
_generate_srv_py(moveit_solution
  "/home/alston/Automated-Object-Handling/src/labs/moveit_solution/srv/remove_collision.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/moveit_solution
)
_generate_srv_py(moveit_solution
  "/home/alston/Automated-Object-Handling/src/labs/moveit_solution/srv/pick.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/moveit_solution
)

### Generating Module File
_generate_module_py(moveit_solution
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/moveit_solution
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(moveit_solution_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(moveit_solution_generate_messages moveit_solution_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/alston/Automated-Object-Handling/src/labs/moveit_solution/srv/set_arm.srv" NAME_WE)
add_dependencies(moveit_solution_generate_messages_py _moveit_solution_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/alston/Automated-Object-Handling/src/labs/moveit_solution/srv/set_gripper.srv" NAME_WE)
add_dependencies(moveit_solution_generate_messages_py _moveit_solution_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/alston/Automated-Object-Handling/src/labs/moveit_solution/srv/add_collision.srv" NAME_WE)
add_dependencies(moveit_solution_generate_messages_py _moveit_solution_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/alston/Automated-Object-Handling/src/labs/moveit_solution/srv/remove_collision.srv" NAME_WE)
add_dependencies(moveit_solution_generate_messages_py _moveit_solution_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/alston/Automated-Object-Handling/src/labs/moveit_solution/srv/pick.srv" NAME_WE)
add_dependencies(moveit_solution_generate_messages_py _moveit_solution_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(moveit_solution_genpy)
add_dependencies(moveit_solution_genpy moveit_solution_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS moveit_solution_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/moveit_solution)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/moveit_solution
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(moveit_solution_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(moveit_solution_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/moveit_solution)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/moveit_solution
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(moveit_solution_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(moveit_solution_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/moveit_solution)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/moveit_solution
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(moveit_solution_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(moveit_solution_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/moveit_solution)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/moveit_solution
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(moveit_solution_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(moveit_solution_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/moveit_solution)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/moveit_solution\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/moveit_solution
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(moveit_solution_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(moveit_solution_generate_messages_py geometry_msgs_generate_messages_py)
endif()
