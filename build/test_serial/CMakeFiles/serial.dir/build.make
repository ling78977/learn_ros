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
include test_serial/CMakeFiles/serial.dir/depend.make

# Include the progress variables for this target.
include test_serial/CMakeFiles/serial.dir/progress.make

# Include the compile flags for this target's objects.
include test_serial/CMakeFiles/serial.dir/flags.make

test_serial/CMakeFiles/serial.dir/src/serial.cpp.o: test_serial/CMakeFiles/serial.dir/flags.make
test_serial/CMakeFiles/serial.dir/src/serial.cpp.o: /home/ling/catkin_ws/src/test_serial/src/serial.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ling/catkin_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object test_serial/CMakeFiles/serial.dir/src/serial.cpp.o"
	cd /home/ling/catkin_ws/build/test_serial && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/serial.dir/src/serial.cpp.o -c /home/ling/catkin_ws/src/test_serial/src/serial.cpp

test_serial/CMakeFiles/serial.dir/src/serial.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/serial.dir/src/serial.cpp.i"
	cd /home/ling/catkin_ws/build/test_serial && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ling/catkin_ws/src/test_serial/src/serial.cpp > CMakeFiles/serial.dir/src/serial.cpp.i

test_serial/CMakeFiles/serial.dir/src/serial.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/serial.dir/src/serial.cpp.s"
	cd /home/ling/catkin_ws/build/test_serial && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ling/catkin_ws/src/test_serial/src/serial.cpp -o CMakeFiles/serial.dir/src/serial.cpp.s

# Object files for target serial
serial_OBJECTS = \
"CMakeFiles/serial.dir/src/serial.cpp.o"

# External object files for target serial
serial_EXTERNAL_OBJECTS =

/home/ling/catkin_ws/devel/lib/test_serial/serial: test_serial/CMakeFiles/serial.dir/src/serial.cpp.o
/home/ling/catkin_ws/devel/lib/test_serial/serial: test_serial/CMakeFiles/serial.dir/build.make
/home/ling/catkin_ws/devel/lib/test_serial/serial: /opt/ros/noetic/lib/libroscpp.so
/home/ling/catkin_ws/devel/lib/test_serial/serial: /usr/lib/x86_64-linux-gnu/libpthread.so
/home/ling/catkin_ws/devel/lib/test_serial/serial: /usr/lib/x86_64-linux-gnu/libboost_chrono.so.1.71.0
/home/ling/catkin_ws/devel/lib/test_serial/serial: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so.1.71.0
/home/ling/catkin_ws/devel/lib/test_serial/serial: /opt/ros/noetic/lib/librosconsole.so
/home/ling/catkin_ws/devel/lib/test_serial/serial: /opt/ros/noetic/lib/librosconsole_log4cxx.so
/home/ling/catkin_ws/devel/lib/test_serial/serial: /opt/ros/noetic/lib/librosconsole_backend_interface.so
/home/ling/catkin_ws/devel/lib/test_serial/serial: /usr/lib/x86_64-linux-gnu/liblog4cxx.so
/home/ling/catkin_ws/devel/lib/test_serial/serial: /usr/lib/x86_64-linux-gnu/libboost_regex.so.1.71.0
/home/ling/catkin_ws/devel/lib/test_serial/serial: /opt/ros/noetic/lib/libxmlrpcpp.so
/home/ling/catkin_ws/devel/lib/test_serial/serial: /opt/ros/noetic/lib/libroscpp_serialization.so
/home/ling/catkin_ws/devel/lib/test_serial/serial: /opt/ros/noetic/lib/librostime.so
/home/ling/catkin_ws/devel/lib/test_serial/serial: /usr/lib/x86_64-linux-gnu/libboost_date_time.so.1.71.0
/home/ling/catkin_ws/devel/lib/test_serial/serial: /opt/ros/noetic/lib/libcpp_common.so
/home/ling/catkin_ws/devel/lib/test_serial/serial: /usr/lib/x86_64-linux-gnu/libboost_system.so.1.71.0
/home/ling/catkin_ws/devel/lib/test_serial/serial: /usr/lib/x86_64-linux-gnu/libboost_thread.so.1.71.0
/home/ling/catkin_ws/devel/lib/test_serial/serial: /usr/lib/x86_64-linux-gnu/libconsole_bridge.so.0.4
/home/ling/catkin_ws/devel/lib/test_serial/serial: /opt/ros/noetic/lib/libserial.so
/home/ling/catkin_ws/devel/lib/test_serial/serial: test_serial/CMakeFiles/serial.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ling/catkin_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable /home/ling/catkin_ws/devel/lib/test_serial/serial"
	cd /home/ling/catkin_ws/build/test_serial && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/serial.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
test_serial/CMakeFiles/serial.dir/build: /home/ling/catkin_ws/devel/lib/test_serial/serial

.PHONY : test_serial/CMakeFiles/serial.dir/build

test_serial/CMakeFiles/serial.dir/clean:
	cd /home/ling/catkin_ws/build/test_serial && $(CMAKE_COMMAND) -P CMakeFiles/serial.dir/cmake_clean.cmake
.PHONY : test_serial/CMakeFiles/serial.dir/clean

test_serial/CMakeFiles/serial.dir/depend:
	cd /home/ling/catkin_ws/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ling/catkin_ws/src /home/ling/catkin_ws/src/test_serial /home/ling/catkin_ws/build /home/ling/catkin_ws/build/test_serial /home/ling/catkin_ws/build/test_serial/CMakeFiles/serial.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : test_serial/CMakeFiles/serial.dir/depend

