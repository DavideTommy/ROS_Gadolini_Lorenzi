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
CMAKE_COMMAND = /opt/clion-2020.1/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /opt/clion-2020.1/bin/cmake/linux/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/lorenzo/robotics/src/ros_proj

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/lorenzo/robotics/src/ros_proj/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/Mentasti.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/Mentasti.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Mentasti.dir/flags.make

CMakeFiles/Mentasti.dir/src/Mentasti.cpp.o: CMakeFiles/Mentasti.dir/flags.make
CMakeFiles/Mentasti.dir/src/Mentasti.cpp.o: ../src/Mentasti.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/lorenzo/robotics/src/ros_proj/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Mentasti.dir/src/Mentasti.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Mentasti.dir/src/Mentasti.cpp.o -c /home/lorenzo/robotics/src/ros_proj/src/Mentasti.cpp

CMakeFiles/Mentasti.dir/src/Mentasti.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Mentasti.dir/src/Mentasti.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/lorenzo/robotics/src/ros_proj/src/Mentasti.cpp > CMakeFiles/Mentasti.dir/src/Mentasti.cpp.i

CMakeFiles/Mentasti.dir/src/Mentasti.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Mentasti.dir/src/Mentasti.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/lorenzo/robotics/src/ros_proj/src/Mentasti.cpp -o CMakeFiles/Mentasti.dir/src/Mentasti.cpp.s

# Object files for target Mentasti
Mentasti_OBJECTS = \
"CMakeFiles/Mentasti.dir/src/Mentasti.cpp.o"

# External object files for target Mentasti
Mentasti_EXTERNAL_OBJECTS =

devel/lib/Mentasti/Mentasti: CMakeFiles/Mentasti.dir/src/Mentasti.cpp.o
devel/lib/Mentasti/Mentasti: CMakeFiles/Mentasti.dir/build.make
devel/lib/Mentasti/Mentasti: /opt/ros/melodic/lib/libroscpp.so
devel/lib/Mentasti/Mentasti: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
devel/lib/Mentasti/Mentasti: /opt/ros/melodic/lib/librosconsole.so
devel/lib/Mentasti/Mentasti: /opt/ros/melodic/lib/librosconsole_log4cxx.so
devel/lib/Mentasti/Mentasti: /opt/ros/melodic/lib/librosconsole_backend_interface.so
devel/lib/Mentasti/Mentasti: /usr/lib/x86_64-linux-gnu/liblog4cxx.so
devel/lib/Mentasti/Mentasti: /usr/lib/x86_64-linux-gnu/libboost_regex.so
devel/lib/Mentasti/Mentasti: /opt/ros/melodic/lib/libxmlrpcpp.so
devel/lib/Mentasti/Mentasti: /opt/ros/melodic/lib/libroscpp_serialization.so
devel/lib/Mentasti/Mentasti: /opt/ros/melodic/lib/librostime.so
devel/lib/Mentasti/Mentasti: /opt/ros/melodic/lib/libcpp_common.so
devel/lib/Mentasti/Mentasti: /usr/lib/x86_64-linux-gnu/libboost_system.so
devel/lib/Mentasti/Mentasti: /usr/lib/x86_64-linux-gnu/libboost_thread.so
devel/lib/Mentasti/Mentasti: /usr/lib/x86_64-linux-gnu/libboost_chrono.so
devel/lib/Mentasti/Mentasti: /usr/lib/x86_64-linux-gnu/libboost_date_time.so
devel/lib/Mentasti/Mentasti: /usr/lib/x86_64-linux-gnu/libboost_atomic.so
devel/lib/Mentasti/Mentasti: /usr/lib/x86_64-linux-gnu/libpthread.so
devel/lib/Mentasti/Mentasti: /usr/lib/x86_64-linux-gnu/libconsole_bridge.so.0.4
devel/lib/Mentasti/Mentasti: CMakeFiles/Mentasti.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/lorenzo/robotics/src/ros_proj/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable devel/lib/Mentasti/Mentasti"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Mentasti.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Mentasti.dir/build: devel/lib/Mentasti/Mentasti

.PHONY : CMakeFiles/Mentasti.dir/build

CMakeFiles/Mentasti.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Mentasti.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Mentasti.dir/clean

CMakeFiles/Mentasti.dir/depend:
	cd /home/lorenzo/robotics/src/ros_proj/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/lorenzo/robotics/src/ros_proj /home/lorenzo/robotics/src/ros_proj /home/lorenzo/robotics/src/ros_proj/cmake-build-debug /home/lorenzo/robotics/src/ros_proj/cmake-build-debug /home/lorenzo/robotics/src/ros_proj/cmake-build-debug/CMakeFiles/Mentasti.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Mentasti.dir/depend
