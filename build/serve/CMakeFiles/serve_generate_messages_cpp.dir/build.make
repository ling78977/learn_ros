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

# Utility rule file for serve_generate_messages_cpp.

# Include the progress variables for this target.
include serve/CMakeFiles/serve_generate_messages_cpp.dir/progress.make

serve/CMakeFiles/serve_generate_messages_cpp: /home/ling/catkin_ws/devel/include/serve/AddInts.h


/home/ling/catkin_ws/devel/include/serve/AddInts.h: /opt/ros/noetic/lib/gencpp/gen_cpp.py
/home/ling/catkin_ws/devel/include/serve/AddInts.h: /home/ling/catkin_ws/src/serve/srv/AddInts.srv
/home/ling/catkin_ws/devel/include/serve/AddInts.h: /opt/ros/noetic/share/gencpp/msg.h.template
/home/ling/catkin_ws/devel/include/serve/AddInts.h: /opt/ros/noetic/share/gencpp/srv.h.template
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/ling/catkin_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating C++ code from serve/AddInts.srv"
	cd /home/ling/catkin_ws/src/serve && /home/ling/catkin_ws/build/catkin_generated/env_cached.sh /usr/bin/python3 /opt/ros/noetic/share/gencpp/cmake/../../../lib/gencpp/gen_cpp.py /home/ling/catkin_ws/src/serve/srv/AddInts.srv -Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg -p serve -o /home/ling/catkin_ws/devel/include/serve -e /opt/ros/noetic/share/gencpp/cmake/..

serve_generate_messages_cpp: serve/CMakeFiles/serve_generate_messages_cpp
serve_generate_messages_cpp: /home/ling/catkin_ws/devel/include/serve/AddInts.h
serve_generate_messages_cpp: serve/CMakeFiles/serve_generate_messages_cpp.dir/build.make

.PHONY : serve_generate_messages_cpp

# Rule to build all files generated by this target.
serve/CMakeFiles/serve_generate_messages_cpp.dir/build: serve_generate_messages_cpp

.PHONY : serve/CMakeFiles/serve_generate_messages_cpp.dir/build

serve/CMakeFiles/serve_generate_messages_cpp.dir/clean:
	cd /home/ling/catkin_ws/build/serve && $(CMAKE_COMMAND) -P CMakeFiles/serve_generate_messages_cpp.dir/cmake_clean.cmake
.PHONY : serve/CMakeFiles/serve_generate_messages_cpp.dir/clean

serve/CMakeFiles/serve_generate_messages_cpp.dir/depend:
	cd /home/ling/catkin_ws/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ling/catkin_ws/src /home/ling/catkin_ws/src/serve /home/ling/catkin_ws/build /home/ling/catkin_ws/build/serve /home/ling/catkin_ws/build/serve/CMakeFiles/serve_generate_messages_cpp.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : serve/CMakeFiles/serve_generate_messages_cpp.dir/depend

