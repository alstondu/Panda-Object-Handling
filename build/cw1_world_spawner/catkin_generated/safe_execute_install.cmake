execute_process(COMMAND "/home/alston/Automated-Object-Handling/build/cw1_world_spawner/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/alston/Automated-Object-Handling/build/cw1_world_spawner/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
