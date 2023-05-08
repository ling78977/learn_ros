# Install script for directory: /home/ling/catkin_ws/src/webots_demo

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/ling/catkin_ws/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "RelWithDebInfo")
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

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/webots_demo/msg" TYPE FILE FILES
    "/home/ling/catkin_ws/src/webots_demo/msg/Goalname.msg"
    "/home/ling/catkin_ws/src/webots_demo/msg/BoolStamped.msg"
    "/home/ling/catkin_ws/src/webots_demo/msg/Float64Stamped.msg"
    "/home/ling/catkin_ws/src/webots_demo/msg/Int32Stamped.msg"
    "/home/ling/catkin_ws/src/webots_demo/msg/Int8Stamped.msg"
    "/home/ling/catkin_ws/src/webots_demo/msg/RadarTarget.msg"
    "/home/ling/catkin_ws/src/webots_demo/msg/RecognitionObject.msg"
    "/home/ling/catkin_ws/src/webots_demo/msg/StringStamped.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/webots_demo/srv" TYPE FILE FILES
    "/home/ling/catkin_ws/src/webots_demo/srv/camera_get_focus_info.srv"
    "/home/ling/catkin_ws/src/webots_demo/srv/camera_get_info.srv"
    "/home/ling/catkin_ws/src/webots_demo/srv/camera_get_zoom_info.srv"
    "/home/ling/catkin_ws/src/webots_demo/srv/display_draw_line.srv"
    "/home/ling/catkin_ws/src/webots_demo/srv/display_draw_oval.srv"
    "/home/ling/catkin_ws/src/webots_demo/srv/display_draw_pixel.srv"
    "/home/ling/catkin_ws/src/webots_demo/srv/display_draw_polygon.srv"
    "/home/ling/catkin_ws/src/webots_demo/srv/display_draw_rectangle.srv"
    "/home/ling/catkin_ws/src/webots_demo/srv/display_draw_text.srv"
    "/home/ling/catkin_ws/src/webots_demo/srv/display_get_info.srv"
    "/home/ling/catkin_ws/src/webots_demo/srv/display_image_copy.srv"
    "/home/ling/catkin_ws/src/webots_demo/srv/display_image_delete.srv"
    "/home/ling/catkin_ws/src/webots_demo/srv/display_image_load.srv"
    "/home/ling/catkin_ws/src/webots_demo/srv/display_image_new.srv"
    "/home/ling/catkin_ws/src/webots_demo/srv/display_image_paste.srv"
    "/home/ling/catkin_ws/src/webots_demo/srv/display_image_save.srv"
    "/home/ling/catkin_ws/src/webots_demo/srv/display_set_font.srv"
    "/home/ling/catkin_ws/src/webots_demo/srv/field_get_bool.srv"
    "/home/ling/catkin_ws/src/webots_demo/srv/field_get_color.srv"
    "/home/ling/catkin_ws/src/webots_demo/srv/field_get_count.srv"
    "/home/ling/catkin_ws/src/webots_demo/srv/field_get_float.srv"
    "/home/ling/catkin_ws/src/webots_demo/srv/field_get_int32.srv"
    "/home/ling/catkin_ws/src/webots_demo/srv/field_get_node.srv"
    "/home/ling/catkin_ws/src/webots_demo/srv/field_get_rotation.srv"
    "/home/ling/catkin_ws/src/webots_demo/srv/field_get_string.srv"
    "/home/ling/catkin_ws/src/webots_demo/srv/field_get_type.srv"
    "/home/ling/catkin_ws/src/webots_demo/srv/field_get_type_name.srv"
    "/home/ling/catkin_ws/src/webots_demo/srv/field_get_vec2f.srv"
    "/home/ling/catkin_ws/src/webots_demo/srv/field_get_vec3f.srv"
    "/home/ling/catkin_ws/src/webots_demo/srv/field_import_node.srv"
    "/home/ling/catkin_ws/src/webots_demo/srv/field_import_node_from_string.srv"
    "/home/ling/catkin_ws/src/webots_demo/srv/field_remove_node.srv"
    "/home/ling/catkin_ws/src/webots_demo/srv/field_remove.srv"
    "/home/ling/catkin_ws/src/webots_demo/srv/field_set_bool.srv"
    "/home/ling/catkin_ws/src/webots_demo/srv/field_set_color.srv"
    "/home/ling/catkin_ws/src/webots_demo/srv/field_set_float.srv"
    "/home/ling/catkin_ws/src/webots_demo/srv/field_set_int32.srv"
    "/home/ling/catkin_ws/src/webots_demo/srv/field_set_rotation.srv"
    "/home/ling/catkin_ws/src/webots_demo/srv/field_set_string.srv"
    "/home/ling/catkin_ws/src/webots_demo/srv/field_set_vec2f.srv"
    "/home/ling/catkin_ws/src/webots_demo/srv/field_set_vec3f.srv"
    "/home/ling/catkin_ws/src/webots_demo/srv/get_bool.srv"
    "/home/ling/catkin_ws/src/webots_demo/srv/get_float_array.srv"
    "/home/ling/catkin_ws/src/webots_demo/srv/get_float.srv"
    "/home/ling/catkin_ws/src/webots_demo/srv/get_int.srv"
    "/home/ling/catkin_ws/src/webots_demo/srv/get_string.srv"
    "/home/ling/catkin_ws/src/webots_demo/srv/get_uint64.srv"
    "/home/ling/catkin_ws/src/webots_demo/srv/get_urdf.srv"
    "/home/ling/catkin_ws/src/webots_demo/srv/gps_decimal_degrees_to_degrees_minutes_seconds.srv"
    "/home/ling/catkin_ws/src/webots_demo/srv/lidar_get_frequency_info.srv"
    "/home/ling/catkin_ws/src/webots_demo/srv/lidar_get_info.srv"
    "/home/ling/catkin_ws/src/webots_demo/srv/lidar_get_layer_point_cloud.srv"
    "/home/ling/catkin_ws/src/webots_demo/srv/lidar_get_layer_range_image.srv"
    "/home/ling/catkin_ws/src/webots_demo/srv/motor_set_control_pid.srv"
    "/home/ling/catkin_ws/src/webots_demo/srv/mouse_get_state.srv"
    "/home/ling/catkin_ws/src/webots_demo/srv/node_add_force_or_torque.srv"
    "/home/ling/catkin_ws/src/webots_demo/srv/node_add_force_with_offset.srv"
    "/home/ling/catkin_ws/src/webots_demo/srv/node_get_center_of_mass.srv"
    "/home/ling/catkin_ws/src/webots_demo/srv/node_get_contact_point.srv"
    "/home/ling/catkin_ws/src/webots_demo/srv/node_get_field.srv"
    "/home/ling/catkin_ws/src/webots_demo/srv/node_get_id.srv"
    "/home/ling/catkin_ws/src/webots_demo/srv/node_get_number_of_contact_points.srv"
    "/home/ling/catkin_ws/src/webots_demo/srv/node_get_name.srv"
    "/home/ling/catkin_ws/src/webots_demo/srv/node_get_orientation.srv"
    "/home/ling/catkin_ws/src/webots_demo/srv/node_get_parent_node.srv"
    "/home/ling/catkin_ws/src/webots_demo/srv/node_get_position.srv"
    "/home/ling/catkin_ws/src/webots_demo/srv/node_get_static_balance.srv"
    "/home/ling/catkin_ws/src/webots_demo/srv/node_get_status.srv"
    "/home/ling/catkin_ws/src/webots_demo/srv/node_get_type.srv"
    "/home/ling/catkin_ws/src/webots_demo/srv/node_get_velocity.srv"
    "/home/ling/catkin_ws/src/webots_demo/srv/node_remove.srv"
    "/home/ling/catkin_ws/src/webots_demo/srv/node_reset_functions.srv"
    "/home/ling/catkin_ws/src/webots_demo/srv/node_move_viewpoint.srv"
    "/home/ling/catkin_ws/src/webots_demo/srv/node_set_visibility.srv"
    "/home/ling/catkin_ws/src/webots_demo/srv/node_set_velocity.srv"
    "/home/ling/catkin_ws/src/webots_demo/srv/pen_set_ink_color.srv"
    "/home/ling/catkin_ws/src/webots_demo/srv/range_finder_get_info.srv"
    "/home/ling/catkin_ws/src/webots_demo/srv/receiver_get_emitter_direction.srv"
    "/home/ling/catkin_ws/src/webots_demo/srv/robot_get_device_list.srv"
    "/home/ling/catkin_ws/src/webots_demo/srv/robot_set_mode.srv"
    "/home/ling/catkin_ws/src/webots_demo/srv/robot_wait_for_user_input_event.srv"
    "/home/ling/catkin_ws/src/webots_demo/srv/save_image.srv"
    "/home/ling/catkin_ws/src/webots_demo/srv/set_bool.srv"
    "/home/ling/catkin_ws/src/webots_demo/srv/set_float.srv"
    "/home/ling/catkin_ws/src/webots_demo/srv/set_float_array.srv"
    "/home/ling/catkin_ws/src/webots_demo/srv/set_int.srv"
    "/home/ling/catkin_ws/src/webots_demo/srv/set_string.srv"
    "/home/ling/catkin_ws/src/webots_demo/srv/skin_get_bone_name.srv"
    "/home/ling/catkin_ws/src/webots_demo/srv/skin_get_bone_orientation.srv"
    "/home/ling/catkin_ws/src/webots_demo/srv/skin_get_bone_position.srv"
    "/home/ling/catkin_ws/src/webots_demo/srv/skin_set_bone_orientation.srv"
    "/home/ling/catkin_ws/src/webots_demo/srv/skin_set_bone_position.srv"
    "/home/ling/catkin_ws/src/webots_demo/srv/speaker_is_sound_playing.srv"
    "/home/ling/catkin_ws/src/webots_demo/srv/speaker_speak.srv"
    "/home/ling/catkin_ws/src/webots_demo/srv/speaker_play_sound.srv"
    "/home/ling/catkin_ws/src/webots_demo/srv/supervisor_get_from_def.srv"
    "/home/ling/catkin_ws/src/webots_demo/srv/supervisor_get_from_id.srv"
    "/home/ling/catkin_ws/src/webots_demo/srv/supervisor_movie_start_recording.srv"
    "/home/ling/catkin_ws/src/webots_demo/srv/supervisor_set_label.srv"
    "/home/ling/catkin_ws/src/webots_demo/srv/supervisor_virtual_reality_headset_get_orientation.srv"
    "/home/ling/catkin_ws/src/webots_demo/srv/supervisor_virtual_reality_headset_get_position.srv"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/webots_demo/cmake" TYPE FILE FILES "/home/ling/catkin_ws/build/webots_demo/catkin_generated/installspace/webots_demo-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/ling/catkin_ws/devel/include/webots_demo")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/ling/catkin_ws/devel/share/roseus/ros/webots_demo")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/ling/catkin_ws/devel/share/common-lisp/ros/webots_demo")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/ling/catkin_ws/devel/share/gennodejs/ros/webots_demo")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python3" -m compileall "/home/ling/catkin_ws/devel/lib/python3/dist-packages/webots_demo")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages" TYPE DIRECTORY FILES "/home/ling/catkin_ws/devel/lib/python3/dist-packages/webots_demo")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/ling/catkin_ws/build/webots_demo/catkin_generated/installspace/webots_demo.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/webots_demo/cmake" TYPE FILE FILES "/home/ling/catkin_ws/build/webots_demo/catkin_generated/installspace/webots_demo-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/webots_demo/cmake" TYPE FILE FILES
    "/home/ling/catkin_ws/build/webots_demo/catkin_generated/installspace/webots_demoConfig.cmake"
    "/home/ling/catkin_ws/build/webots_demo/catkin_generated/installspace/webots_demoConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/webots_demo" TYPE FILE FILES "/home/ling/catkin_ws/src/webots_demo/package.xml")
endif()

