# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/ling/catkin_ws/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ling/catkin_ws/build

# Include any dependencies generated for this target.
include usb_cam/CMakeFiles/img_sub.dir/depend.make

# Include the progress variables for this target.
include usb_cam/CMakeFiles/img_sub.dir/progress.make

# Include the compile flags for this target's objects.
include usb_cam/CMakeFiles/img_sub.dir/flags.make

usb_cam/CMakeFiles/img_sub.dir/src/img_sub.cpp.o: usb_cam/CMakeFiles/img_sub.dir/flags.make
usb_cam/CMakeFiles/img_sub.dir/src/img_sub.cpp.o: /home/ling/catkin_ws/src/usb_cam/src/img_sub.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ling/catkin_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object usb_cam/CMakeFiles/img_sub.dir/src/img_sub.cpp.o"
	cd /home/ling/catkin_ws/build/usb_cam && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/img_sub.dir/src/img_sub.cpp.o -c /home/ling/catkin_ws/src/usb_cam/src/img_sub.cpp

usb_cam/CMakeFiles/img_sub.dir/src/img_sub.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/img_sub.dir/src/img_sub.cpp.i"
	cd /home/ling/catkin_ws/build/usb_cam && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ling/catkin_ws/src/usb_cam/src/img_sub.cpp > CMakeFiles/img_sub.dir/src/img_sub.cpp.i

usb_cam/CMakeFiles/img_sub.dir/src/img_sub.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/img_sub.dir/src/img_sub.cpp.s"
	cd /home/ling/catkin_ws/build/usb_cam && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ling/catkin_ws/src/usb_cam/src/img_sub.cpp -o CMakeFiles/img_sub.dir/src/img_sub.cpp.s

# Object files for target img_sub
img_sub_OBJECTS = \
"CMakeFiles/img_sub.dir/src/img_sub.cpp.o"

# External object files for target img_sub
img_sub_EXTERNAL_OBJECTS =

/home/ling/catkin_ws/devel/lib/usb_cam/img_sub: usb_cam/CMakeFiles/img_sub.dir/src/img_sub.cpp.o
/home/ling/catkin_ws/devel/lib/usb_cam/img_sub: usb_cam/CMakeFiles/img_sub.dir/build.make
/home/ling/catkin_ws/devel/lib/usb_cam/img_sub: /opt/ros/noetic/lib/libcv_bridge.so
/home/ling/catkin_ws/devel/lib/usb_cam/img_sub: /usr/lib/x86_64-linux-gnu/libopencv_calib3d.so.4.2.0
/home/ling/catkin_ws/devel/lib/usb_cam/img_sub: /usr/lib/x86_64-linux-gnu/libopencv_dnn.so.4.2.0
/home/ling/catkin_ws/devel/lib/usb_cam/img_sub: /usr/lib/x86_64-linux-gnu/libopencv_features2d.so.4.2.0
/home/ling/catkin_ws/devel/lib/usb_cam/img_sub: /usr/lib/x86_64-linux-gnu/libopencv_flann.so.4.2.0
/home/ling/catkin_ws/devel/lib/usb_cam/img_sub: /usr/lib/x86_64-linux-gnu/libopencv_highgui.so.4.2.0
/home/ling/catkin_ws/devel/lib/usb_cam/img_sub: /usr/lib/x86_64-linux-gnu/libopencv_ml.so.4.2.0
/home/ling/catkin_ws/devel/lib/usb_cam/img_sub: /usr/lib/x86_64-linux-gnu/libopencv_objdetect.so.4.2.0
/home/ling/catkin_ws/devel/lib/usb_cam/img_sub: /usr/lib/x86_64-linux-gnu/libopencv_photo.so.4.2.0
/home/ling/catkin_ws/devel/lib/usb_cam/img_sub: /usr/lib/x86_64-linux-gnu/libopencv_stitching.so.4.2.0
/home/ling/catkin_ws/devel/lib/usb_cam/img_sub: /usr/lib/x86_64-linux-gnu/libopencv_video.so.4.2.0
/home/ling/catkin_ws/devel/lib/usb_cam/img_sub: /usr/lib/x86_64-linux-gnu/libopencv_videoio.so.4.2.0
/home/ling/catkin_ws/devel/lib/usb_cam/img_sub: /usr/lib/x86_64-linux-gnu/libopencv_aruco.so.4.2.0
/home/ling/catkin_ws/devel/lib/usb_cam/img_sub: /usr/lib/x86_64-linux-gnu/libopencv_bgsegm.so.4.2.0
/home/ling/catkin_ws/devel/lib/usb_cam/img_sub: /usr/lib/x86_64-linux-gnu/libopencv_bioinspired.so.4.2.0
/home/ling/catkin_ws/devel/lib/usb_cam/img_sub: /usr/lib/x86_64-linux-gnu/libopencv_ccalib.so.4.2.0
/home/ling/catkin_ws/devel/lib/usb_cam/img_sub: /usr/lib/x86_64-linux-gnu/libopencv_datasets.so.4.2.0
/home/ling/catkin_ws/devel/lib/usb_cam/img_sub: /usr/lib/x86_64-linux-gnu/libopencv_dnn_objdetect.so.4.2.0
/home/ling/catkin_ws/devel/lib/usb_cam/img_sub: /usr/lib/x86_64-linux-gnu/libopencv_dnn_superres.so.4.2.0
/home/ling/catkin_ws/devel/lib/usb_cam/img_sub: /usr/lib/x86_64-linux-gnu/libopencv_dpm.so.4.2.0
/home/ling/catkin_ws/devel/lib/usb_cam/img_sub: /usr/lib/x86_64-linux-gnu/libopencv_face.so.4.2.0
/home/ling/catkin_ws/devel/lib/usb_cam/img_sub: /usr/lib/x86_64-linux-gnu/libopencv_freetype.so.4.2.0
/home/ling/catkin_ws/devel/lib/usb_cam/img_sub: /usr/lib/x86_64-linux-gnu/libopencv_fuzzy.so.4.2.0
/home/ling/catkin_ws/devel/lib/usb_cam/img_sub: /usr/lib/x86_64-linux-gnu/libopencv_hdf.so.4.2.0
/home/ling/catkin_ws/devel/lib/usb_cam/img_sub: /usr/lib/x86_64-linux-gnu/libopencv_hfs.so.4.2.0
/home/ling/catkin_ws/devel/lib/usb_cam/img_sub: /usr/lib/x86_64-linux-gnu/libopencv_img_hash.so.4.2.0
/home/ling/catkin_ws/devel/lib/usb_cam/img_sub: /usr/lib/x86_64-linux-gnu/libopencv_line_descriptor.so.4.2.0
/home/ling/catkin_ws/devel/lib/usb_cam/img_sub: /usr/lib/x86_64-linux-gnu/libopencv_optflow.so.4.2.0
/home/ling/catkin_ws/devel/lib/usb_cam/img_sub: /usr/lib/x86_64-linux-gnu/libopencv_phase_unwrapping.so.4.2.0
/home/ling/catkin_ws/devel/lib/usb_cam/img_sub: /usr/lib/x86_64-linux-gnu/libopencv_plot.so.4.2.0
/home/ling/catkin_ws/devel/lib/usb_cam/img_sub: /usr/lib/x86_64-linux-gnu/libopencv_quality.so.4.2.0
/home/ling/catkin_ws/devel/lib/usb_cam/img_sub: /usr/lib/x86_64-linux-gnu/libopencv_reg.so.4.2.0
/home/ling/catkin_ws/devel/lib/usb_cam/img_sub: /usr/lib/x86_64-linux-gnu/libopencv_rgbd.so.4.2.0
/home/ling/catkin_ws/devel/lib/usb_cam/img_sub: /usr/lib/x86_64-linux-gnu/libopencv_saliency.so.4.2.0
/home/ling/catkin_ws/devel/lib/usb_cam/img_sub: /usr/lib/x86_64-linux-gnu/libopencv_shape.so.4.2.0
/home/ling/catkin_ws/devel/lib/usb_cam/img_sub: /usr/lib/x86_64-linux-gnu/libopencv_stereo.so.4.2.0
/home/ling/catkin_ws/devel/lib/usb_cam/img_sub: /usr/lib/x86_64-linux-gnu/libopencv_structured_light.so.4.2.0
/home/ling/catkin_ws/devel/lib/usb_cam/img_sub: /usr/lib/x86_64-linux-gnu/libopencv_superres.so.4.2.0
/home/ling/catkin_ws/devel/lib/usb_cam/img_sub: /usr/lib/x86_64-linux-gnu/libopencv_surface_matching.so.4.2.0
/home/ling/catkin_ws/devel/lib/usb_cam/img_sub: /usr/lib/x86_64-linux-gnu/libopencv_text.so.4.2.0
/home/ling/catkin_ws/devel/lib/usb_cam/img_sub: /usr/lib/x86_64-linux-gnu/libopencv_tracking.so.4.2.0
/home/ling/catkin_ws/devel/lib/usb_cam/img_sub: /usr/lib/x86_64-linux-gnu/libopencv_videostab.so.4.2.0
/home/ling/catkin_ws/devel/lib/usb_cam/img_sub: /usr/lib/x86_64-linux-gnu/libopencv_viz.so.4.2.0
/home/ling/catkin_ws/devel/lib/usb_cam/img_sub: /usr/lib/x86_64-linux-gnu/libopencv_ximgproc.so.4.2.0
/home/ling/catkin_ws/devel/lib/usb_cam/img_sub: /usr/lib/x86_64-linux-gnu/libopencv_xobjdetect.so.4.2.0
/home/ling/catkin_ws/devel/lib/usb_cam/img_sub: /usr/lib/x86_64-linux-gnu/libopencv_xphoto.so.4.2.0
/home/ling/catkin_ws/devel/lib/usb_cam/img_sub: /usr/lib/x86_64-linux-gnu/libopencv_core.so.4.2.0
/home/ling/catkin_ws/devel/lib/usb_cam/img_sub: /usr/lib/x86_64-linux-gnu/libopencv_imgproc.so.4.2.0
/home/ling/catkin_ws/devel/lib/usb_cam/img_sub: /usr/lib/x86_64-linux-gnu/libopencv_imgcodecs.so.4.2.0
/home/ling/catkin_ws/devel/lib/usb_cam/img_sub: /opt/ros/noetic/lib/libimage_transport.so
/home/ling/catkin_ws/devel/lib/usb_cam/img_sub: /opt/ros/noetic/lib/libmessage_filters.so
/home/ling/catkin_ws/devel/lib/usb_cam/img_sub: /opt/ros/noetic/lib/libclass_loader.so
/home/ling/catkin_ws/devel/lib/usb_cam/img_sub: /usr/lib/x86_64-linux-gnu/libPocoFoundation.so
/home/ling/catkin_ws/devel/lib/usb_cam/img_sub: /usr/lib/x86_64-linux-gnu/libdl.so
/home/ling/catkin_ws/devel/lib/usb_cam/img_sub: /opt/ros/noetic/lib/libroslib.so
/home/ling/catkin_ws/devel/lib/usb_cam/img_sub: /opt/ros/noetic/lib/librospack.so
/home/ling/catkin_ws/devel/lib/usb_cam/img_sub: /usr/lib/x86_64-linux-gnu/libpython3.8.so
/home/ling/catkin_ws/devel/lib/usb_cam/img_sub: /usr/lib/x86_64-linux-gnu/libboost_program_options.so.1.71.0
/home/ling/catkin_ws/devel/lib/usb_cam/img_sub: /usr/lib/x86_64-linux-gnu/libtinyxml2.so
/home/ling/catkin_ws/devel/lib/usb_cam/img_sub: /opt/ros/noetic/lib/libroscpp.so
/home/ling/catkin_ws/devel/lib/usb_cam/img_sub: /usr/lib/x86_64-linux-gnu/libpthread.so
/home/ling/catkin_ws/devel/lib/usb_cam/img_sub: /usr/lib/x86_64-linux-gnu/libboost_chrono.so.1.71.0
/home/ling/catkin_ws/devel/lib/usb_cam/img_sub: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so.1.71.0
/home/ling/catkin_ws/devel/lib/usb_cam/img_sub: /opt/ros/noetic/lib/librosconsole.so
/home/ling/catkin_ws/devel/lib/usb_cam/img_sub: /opt/ros/noetic/lib/librosconsole_log4cxx.so
/home/ling/catkin_ws/devel/lib/usb_cam/img_sub: /opt/ros/noetic/lib/librosconsole_backend_interface.so
/home/ling/catkin_ws/devel/lib/usb_cam/img_sub: /usr/lib/x86_64-linux-gnu/liblog4cxx.so
/home/ling/catkin_ws/devel/lib/usb_cam/img_sub: /usr/lib/x86_64-linux-gnu/libboost_regex.so.1.71.0
/home/ling/catkin_ws/devel/lib/usb_cam/img_sub: /opt/ros/noetic/lib/libxmlrpcpp.so
/home/ling/catkin_ws/devel/lib/usb_cam/img_sub: /opt/ros/noetic/lib/libroscpp_serialization.so
/home/ling/catkin_ws/devel/lib/usb_cam/img_sub: /opt/ros/noetic/lib/librostime.so
/home/ling/catkin_ws/devel/lib/usb_cam/img_sub: /usr/lib/x86_64-linux-gnu/libboost_date_time.so.1.71.0
/home/ling/catkin_ws/devel/lib/usb_cam/img_sub: /opt/ros/noetic/lib/libcpp_common.so
/home/ling/catkin_ws/devel/lib/usb_cam/img_sub: /usr/lib/x86_64-linux-gnu/libboost_system.so.1.71.0
/home/ling/catkin_ws/devel/lib/usb_cam/img_sub: /usr/lib/x86_64-linux-gnu/libboost_thread.so.1.71.0
/home/ling/catkin_ws/devel/lib/usb_cam/img_sub: /usr/lib/x86_64-linux-gnu/libconsole_bridge.so.0.4
/home/ling/catkin_ws/devel/lib/usb_cam/img_sub: /usr/local/lib/libopencv_gapi.so.4.5.3
/home/ling/catkin_ws/devel/lib/usb_cam/img_sub: /usr/local/lib/libopencv_highgui.so.4.5.3
/home/ling/catkin_ws/devel/lib/usb_cam/img_sub: /usr/local/lib/libopencv_ml.so.4.5.3
/home/ling/catkin_ws/devel/lib/usb_cam/img_sub: /usr/local/lib/libopencv_objdetect.so.4.5.3
/home/ling/catkin_ws/devel/lib/usb_cam/img_sub: /usr/local/lib/libopencv_photo.so.4.5.3
/home/ling/catkin_ws/devel/lib/usb_cam/img_sub: /usr/local/lib/libopencv_stitching.so.4.5.3
/home/ling/catkin_ws/devel/lib/usb_cam/img_sub: /usr/local/lib/libopencv_video.so.4.5.3
/home/ling/catkin_ws/devel/lib/usb_cam/img_sub: /usr/local/lib/libopencv_videoio.so.4.5.3
/home/ling/catkin_ws/devel/lib/usb_cam/img_sub: /usr/local/lib/libopencv_dnn.so.4.5.3
/home/ling/catkin_ws/devel/lib/usb_cam/img_sub: /usr/local/lib/libopencv_imgcodecs.so.4.5.3
/home/ling/catkin_ws/devel/lib/usb_cam/img_sub: /usr/local/lib/libopencv_calib3d.so.4.5.3
/home/ling/catkin_ws/devel/lib/usb_cam/img_sub: /usr/local/lib/libopencv_features2d.so.4.5.3
/home/ling/catkin_ws/devel/lib/usb_cam/img_sub: /usr/local/lib/libopencv_flann.so.4.5.3
/home/ling/catkin_ws/devel/lib/usb_cam/img_sub: /usr/local/lib/libopencv_imgproc.so.4.5.3
/home/ling/catkin_ws/devel/lib/usb_cam/img_sub: /usr/local/lib/libopencv_core.so.4.5.3
/home/ling/catkin_ws/devel/lib/usb_cam/img_sub: usb_cam/CMakeFiles/img_sub.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ling/catkin_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable /home/ling/catkin_ws/devel/lib/usb_cam/img_sub"
	cd /home/ling/catkin_ws/build/usb_cam && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/img_sub.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
usb_cam/CMakeFiles/img_sub.dir/build: /home/ling/catkin_ws/devel/lib/usb_cam/img_sub

.PHONY : usb_cam/CMakeFiles/img_sub.dir/build

usb_cam/CMakeFiles/img_sub.dir/clean:
	cd /home/ling/catkin_ws/build/usb_cam && $(CMAKE_COMMAND) -P CMakeFiles/img_sub.dir/cmake_clean.cmake
.PHONY : usb_cam/CMakeFiles/img_sub.dir/clean

usb_cam/CMakeFiles/img_sub.dir/depend:
	cd /home/ling/catkin_ws/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ling/catkin_ws/src /home/ling/catkin_ws/src/usb_cam /home/ling/catkin_ws/build /home/ling/catkin_ws/build/usb_cam /home/ling/catkin_ws/build/usb_cam/CMakeFiles/img_sub.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : usb_cam/CMakeFiles/img_sub.dir/depend

