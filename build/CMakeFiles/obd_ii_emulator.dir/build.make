# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/local/bin/cmake

# The command to remove a file.
RM = /usr/local/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/runner/work/OBD-II-Emulator/OBD-II-Emulator

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/runner/work/OBD-II-Emulator/OBD-II-Emulator/build

# Include any dependencies generated for this target.
include CMakeFiles/obd_ii_emulator.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/obd_ii_emulator.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/obd_ii_emulator.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/obd_ii_emulator.dir/flags.make

CMakeFiles/obd_ii_emulator.dir/src/can_frame.cpp.o: CMakeFiles/obd_ii_emulator.dir/flags.make
CMakeFiles/obd_ii_emulator.dir/src/can_frame.cpp.o: ../src/can_frame.cpp
CMakeFiles/obd_ii_emulator.dir/src/can_frame.cpp.o: CMakeFiles/obd_ii_emulator.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/runner/work/OBD-II-Emulator/OBD-II-Emulator/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/obd_ii_emulator.dir/src/can_frame.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/obd_ii_emulator.dir/src/can_frame.cpp.o -MF CMakeFiles/obd_ii_emulator.dir/src/can_frame.cpp.o.d -o CMakeFiles/obd_ii_emulator.dir/src/can_frame.cpp.o -c /home/runner/work/OBD-II-Emulator/OBD-II-Emulator/src/can_frame.cpp

CMakeFiles/obd_ii_emulator.dir/src/can_frame.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/obd_ii_emulator.dir/src/can_frame.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/runner/work/OBD-II-Emulator/OBD-II-Emulator/src/can_frame.cpp > CMakeFiles/obd_ii_emulator.dir/src/can_frame.cpp.i

CMakeFiles/obd_ii_emulator.dir/src/can_frame.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/obd_ii_emulator.dir/src/can_frame.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/runner/work/OBD-II-Emulator/OBD-II-Emulator/src/can_frame.cpp -o CMakeFiles/obd_ii_emulator.dir/src/can_frame.cpp.s

CMakeFiles/obd_ii_emulator.dir/src/can_driver.cpp.o: CMakeFiles/obd_ii_emulator.dir/flags.make
CMakeFiles/obd_ii_emulator.dir/src/can_driver.cpp.o: ../src/can_driver.cpp
CMakeFiles/obd_ii_emulator.dir/src/can_driver.cpp.o: CMakeFiles/obd_ii_emulator.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/runner/work/OBD-II-Emulator/OBD-II-Emulator/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/obd_ii_emulator.dir/src/can_driver.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/obd_ii_emulator.dir/src/can_driver.cpp.o -MF CMakeFiles/obd_ii_emulator.dir/src/can_driver.cpp.o.d -o CMakeFiles/obd_ii_emulator.dir/src/can_driver.cpp.o -c /home/runner/work/OBD-II-Emulator/OBD-II-Emulator/src/can_driver.cpp

CMakeFiles/obd_ii_emulator.dir/src/can_driver.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/obd_ii_emulator.dir/src/can_driver.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/runner/work/OBD-II-Emulator/OBD-II-Emulator/src/can_driver.cpp > CMakeFiles/obd_ii_emulator.dir/src/can_driver.cpp.i

CMakeFiles/obd_ii_emulator.dir/src/can_driver.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/obd_ii_emulator.dir/src/can_driver.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/runner/work/OBD-II-Emulator/OBD-II-Emulator/src/can_driver.cpp -o CMakeFiles/obd_ii_emulator.dir/src/can_driver.cpp.s

CMakeFiles/obd_ii_emulator.dir/src/obd_service.cpp.o: CMakeFiles/obd_ii_emulator.dir/flags.make
CMakeFiles/obd_ii_emulator.dir/src/obd_service.cpp.o: ../src/obd_service.cpp
CMakeFiles/obd_ii_emulator.dir/src/obd_service.cpp.o: CMakeFiles/obd_ii_emulator.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/runner/work/OBD-II-Emulator/OBD-II-Emulator/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/obd_ii_emulator.dir/src/obd_service.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/obd_ii_emulator.dir/src/obd_service.cpp.o -MF CMakeFiles/obd_ii_emulator.dir/src/obd_service.cpp.o.d -o CMakeFiles/obd_ii_emulator.dir/src/obd_service.cpp.o -c /home/runner/work/OBD-II-Emulator/OBD-II-Emulator/src/obd_service.cpp

CMakeFiles/obd_ii_emulator.dir/src/obd_service.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/obd_ii_emulator.dir/src/obd_service.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/runner/work/OBD-II-Emulator/OBD-II-Emulator/src/obd_service.cpp > CMakeFiles/obd_ii_emulator.dir/src/obd_service.cpp.i

CMakeFiles/obd_ii_emulator.dir/src/obd_service.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/obd_ii_emulator.dir/src/obd_service.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/runner/work/OBD-II-Emulator/OBD-II-Emulator/src/obd_service.cpp -o CMakeFiles/obd_ii_emulator.dir/src/obd_service.cpp.s

CMakeFiles/obd_ii_emulator.dir/src/communication_layer.cpp.o: CMakeFiles/obd_ii_emulator.dir/flags.make
CMakeFiles/obd_ii_emulator.dir/src/communication_layer.cpp.o: ../src/communication_layer.cpp
CMakeFiles/obd_ii_emulator.dir/src/communication_layer.cpp.o: CMakeFiles/obd_ii_emulator.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/runner/work/OBD-II-Emulator/OBD-II-Emulator/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/obd_ii_emulator.dir/src/communication_layer.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/obd_ii_emulator.dir/src/communication_layer.cpp.o -MF CMakeFiles/obd_ii_emulator.dir/src/communication_layer.cpp.o.d -o CMakeFiles/obd_ii_emulator.dir/src/communication_layer.cpp.o -c /home/runner/work/OBD-II-Emulator/OBD-II-Emulator/src/communication_layer.cpp

CMakeFiles/obd_ii_emulator.dir/src/communication_layer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/obd_ii_emulator.dir/src/communication_layer.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/runner/work/OBD-II-Emulator/OBD-II-Emulator/src/communication_layer.cpp > CMakeFiles/obd_ii_emulator.dir/src/communication_layer.cpp.i

CMakeFiles/obd_ii_emulator.dir/src/communication_layer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/obd_ii_emulator.dir/src/communication_layer.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/runner/work/OBD-II-Emulator/OBD-II-Emulator/src/communication_layer.cpp -o CMakeFiles/obd_ii_emulator.dir/src/communication_layer.cpp.s

CMakeFiles/obd_ii_emulator.dir/src/obd_emulator.cpp.o: CMakeFiles/obd_ii_emulator.dir/flags.make
CMakeFiles/obd_ii_emulator.dir/src/obd_emulator.cpp.o: ../src/obd_emulator.cpp
CMakeFiles/obd_ii_emulator.dir/src/obd_emulator.cpp.o: CMakeFiles/obd_ii_emulator.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/runner/work/OBD-II-Emulator/OBD-II-Emulator/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/obd_ii_emulator.dir/src/obd_emulator.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/obd_ii_emulator.dir/src/obd_emulator.cpp.o -MF CMakeFiles/obd_ii_emulator.dir/src/obd_emulator.cpp.o.d -o CMakeFiles/obd_ii_emulator.dir/src/obd_emulator.cpp.o -c /home/runner/work/OBD-II-Emulator/OBD-II-Emulator/src/obd_emulator.cpp

CMakeFiles/obd_ii_emulator.dir/src/obd_emulator.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/obd_ii_emulator.dir/src/obd_emulator.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/runner/work/OBD-II-Emulator/OBD-II-Emulator/src/obd_emulator.cpp > CMakeFiles/obd_ii_emulator.dir/src/obd_emulator.cpp.i

CMakeFiles/obd_ii_emulator.dir/src/obd_emulator.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/obd_ii_emulator.dir/src/obd_emulator.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/runner/work/OBD-II-Emulator/OBD-II-Emulator/src/obd_emulator.cpp -o CMakeFiles/obd_ii_emulator.dir/src/obd_emulator.cpp.s

CMakeFiles/obd_ii_emulator.dir/src/serial_communication.cpp.o: CMakeFiles/obd_ii_emulator.dir/flags.make
CMakeFiles/obd_ii_emulator.dir/src/serial_communication.cpp.o: ../src/serial_communication.cpp
CMakeFiles/obd_ii_emulator.dir/src/serial_communication.cpp.o: CMakeFiles/obd_ii_emulator.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/runner/work/OBD-II-Emulator/OBD-II-Emulator/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/obd_ii_emulator.dir/src/serial_communication.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/obd_ii_emulator.dir/src/serial_communication.cpp.o -MF CMakeFiles/obd_ii_emulator.dir/src/serial_communication.cpp.o.d -o CMakeFiles/obd_ii_emulator.dir/src/serial_communication.cpp.o -c /home/runner/work/OBD-II-Emulator/OBD-II-Emulator/src/serial_communication.cpp

CMakeFiles/obd_ii_emulator.dir/src/serial_communication.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/obd_ii_emulator.dir/src/serial_communication.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/runner/work/OBD-II-Emulator/OBD-II-Emulator/src/serial_communication.cpp > CMakeFiles/obd_ii_emulator.dir/src/serial_communication.cpp.i

CMakeFiles/obd_ii_emulator.dir/src/serial_communication.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/obd_ii_emulator.dir/src/serial_communication.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/runner/work/OBD-II-Emulator/OBD-II-Emulator/src/serial_communication.cpp -o CMakeFiles/obd_ii_emulator.dir/src/serial_communication.cpp.s

# Object files for target obd_ii_emulator
obd_ii_emulator_OBJECTS = \
"CMakeFiles/obd_ii_emulator.dir/src/can_frame.cpp.o" \
"CMakeFiles/obd_ii_emulator.dir/src/can_driver.cpp.o" \
"CMakeFiles/obd_ii_emulator.dir/src/obd_service.cpp.o" \
"CMakeFiles/obd_ii_emulator.dir/src/communication_layer.cpp.o" \
"CMakeFiles/obd_ii_emulator.dir/src/obd_emulator.cpp.o" \
"CMakeFiles/obd_ii_emulator.dir/src/serial_communication.cpp.o"

# External object files for target obd_ii_emulator
obd_ii_emulator_EXTERNAL_OBJECTS =

libobd_ii_emulator.a: CMakeFiles/obd_ii_emulator.dir/src/can_frame.cpp.o
libobd_ii_emulator.a: CMakeFiles/obd_ii_emulator.dir/src/can_driver.cpp.o
libobd_ii_emulator.a: CMakeFiles/obd_ii_emulator.dir/src/obd_service.cpp.o
libobd_ii_emulator.a: CMakeFiles/obd_ii_emulator.dir/src/communication_layer.cpp.o
libobd_ii_emulator.a: CMakeFiles/obd_ii_emulator.dir/src/obd_emulator.cpp.o
libobd_ii_emulator.a: CMakeFiles/obd_ii_emulator.dir/src/serial_communication.cpp.o
libobd_ii_emulator.a: CMakeFiles/obd_ii_emulator.dir/build.make
libobd_ii_emulator.a: CMakeFiles/obd_ii_emulator.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/runner/work/OBD-II-Emulator/OBD-II-Emulator/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Linking CXX static library libobd_ii_emulator.a"
	$(CMAKE_COMMAND) -P CMakeFiles/obd_ii_emulator.dir/cmake_clean_target.cmake
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/obd_ii_emulator.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/obd_ii_emulator.dir/build: libobd_ii_emulator.a
.PHONY : CMakeFiles/obd_ii_emulator.dir/build

CMakeFiles/obd_ii_emulator.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/obd_ii_emulator.dir/cmake_clean.cmake
.PHONY : CMakeFiles/obd_ii_emulator.dir/clean

CMakeFiles/obd_ii_emulator.dir/depend:
	cd /home/runner/work/OBD-II-Emulator/OBD-II-Emulator/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/runner/work/OBD-II-Emulator/OBD-II-Emulator /home/runner/work/OBD-II-Emulator/OBD-II-Emulator /home/runner/work/OBD-II-Emulator/OBD-II-Emulator/build /home/runner/work/OBD-II-Emulator/OBD-II-Emulator/build /home/runner/work/OBD-II-Emulator/OBD-II-Emulator/build/CMakeFiles/obd_ii_emulator.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/obd_ii_emulator.dir/depend

