execute_process(COMMAND "/home/alston/Panda-Object-Handling/build/panda_world_spawner/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/alston/Panda-Object-Handling/build/panda_world_spawner/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
