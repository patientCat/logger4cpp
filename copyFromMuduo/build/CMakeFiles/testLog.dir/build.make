# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

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
CMAKE_SOURCE_DIR = /home/jmx/project/logger4cpp

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/jmx/project/logger4cpp/build

# Include any dependencies generated for this target.
include CMakeFiles/testLog.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/testLog.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/testLog.dir/flags.make

CMakeFiles/testLog.dir/test.cc.o: CMakeFiles/testLog.dir/flags.make
CMakeFiles/testLog.dir/test.cc.o: ../test.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jmx/project/logger4cpp/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/testLog.dir/test.cc.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/testLog.dir/test.cc.o -c /home/jmx/project/logger4cpp/test.cc

CMakeFiles/testLog.dir/test.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/testLog.dir/test.cc.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jmx/project/logger4cpp/test.cc > CMakeFiles/testLog.dir/test.cc.i

CMakeFiles/testLog.dir/test.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/testLog.dir/test.cc.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jmx/project/logger4cpp/test.cc -o CMakeFiles/testLog.dir/test.cc.s

CMakeFiles/testLog.dir/test.cc.o.requires:

.PHONY : CMakeFiles/testLog.dir/test.cc.o.requires

CMakeFiles/testLog.dir/test.cc.o.provides: CMakeFiles/testLog.dir/test.cc.o.requires
	$(MAKE) -f CMakeFiles/testLog.dir/build.make CMakeFiles/testLog.dir/test.cc.o.provides.build
.PHONY : CMakeFiles/testLog.dir/test.cc.o.provides

CMakeFiles/testLog.dir/test.cc.o.provides.build: CMakeFiles/testLog.dir/test.cc.o


CMakeFiles/testLog.dir/Logging.cc.o: CMakeFiles/testLog.dir/flags.make
CMakeFiles/testLog.dir/Logging.cc.o: ../Logging.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jmx/project/logger4cpp/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/testLog.dir/Logging.cc.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/testLog.dir/Logging.cc.o -c /home/jmx/project/logger4cpp/Logging.cc

CMakeFiles/testLog.dir/Logging.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/testLog.dir/Logging.cc.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jmx/project/logger4cpp/Logging.cc > CMakeFiles/testLog.dir/Logging.cc.i

CMakeFiles/testLog.dir/Logging.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/testLog.dir/Logging.cc.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jmx/project/logger4cpp/Logging.cc -o CMakeFiles/testLog.dir/Logging.cc.s

CMakeFiles/testLog.dir/Logging.cc.o.requires:

.PHONY : CMakeFiles/testLog.dir/Logging.cc.o.requires

CMakeFiles/testLog.dir/Logging.cc.o.provides: CMakeFiles/testLog.dir/Logging.cc.o.requires
	$(MAKE) -f CMakeFiles/testLog.dir/build.make CMakeFiles/testLog.dir/Logging.cc.o.provides.build
.PHONY : CMakeFiles/testLog.dir/Logging.cc.o.provides

CMakeFiles/testLog.dir/Logging.cc.o.provides.build: CMakeFiles/testLog.dir/Logging.cc.o


CMakeFiles/testLog.dir/LogStream.cc.o: CMakeFiles/testLog.dir/flags.make
CMakeFiles/testLog.dir/LogStream.cc.o: ../LogStream.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jmx/project/logger4cpp/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/testLog.dir/LogStream.cc.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/testLog.dir/LogStream.cc.o -c /home/jmx/project/logger4cpp/LogStream.cc

CMakeFiles/testLog.dir/LogStream.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/testLog.dir/LogStream.cc.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jmx/project/logger4cpp/LogStream.cc > CMakeFiles/testLog.dir/LogStream.cc.i

CMakeFiles/testLog.dir/LogStream.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/testLog.dir/LogStream.cc.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jmx/project/logger4cpp/LogStream.cc -o CMakeFiles/testLog.dir/LogStream.cc.s

CMakeFiles/testLog.dir/LogStream.cc.o.requires:

.PHONY : CMakeFiles/testLog.dir/LogStream.cc.o.requires

CMakeFiles/testLog.dir/LogStream.cc.o.provides: CMakeFiles/testLog.dir/LogStream.cc.o.requires
	$(MAKE) -f CMakeFiles/testLog.dir/build.make CMakeFiles/testLog.dir/LogStream.cc.o.provides.build
.PHONY : CMakeFiles/testLog.dir/LogStream.cc.o.provides

CMakeFiles/testLog.dir/LogStream.cc.o.provides.build: CMakeFiles/testLog.dir/LogStream.cc.o


CMakeFiles/testLog.dir/Timestamp.cc.o: CMakeFiles/testLog.dir/flags.make
CMakeFiles/testLog.dir/Timestamp.cc.o: ../Timestamp.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jmx/project/logger4cpp/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/testLog.dir/Timestamp.cc.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/testLog.dir/Timestamp.cc.o -c /home/jmx/project/logger4cpp/Timestamp.cc

CMakeFiles/testLog.dir/Timestamp.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/testLog.dir/Timestamp.cc.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jmx/project/logger4cpp/Timestamp.cc > CMakeFiles/testLog.dir/Timestamp.cc.i

CMakeFiles/testLog.dir/Timestamp.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/testLog.dir/Timestamp.cc.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jmx/project/logger4cpp/Timestamp.cc -o CMakeFiles/testLog.dir/Timestamp.cc.s

CMakeFiles/testLog.dir/Timestamp.cc.o.requires:

.PHONY : CMakeFiles/testLog.dir/Timestamp.cc.o.requires

CMakeFiles/testLog.dir/Timestamp.cc.o.provides: CMakeFiles/testLog.dir/Timestamp.cc.o.requires
	$(MAKE) -f CMakeFiles/testLog.dir/build.make CMakeFiles/testLog.dir/Timestamp.cc.o.provides.build
.PHONY : CMakeFiles/testLog.dir/Timestamp.cc.o.provides

CMakeFiles/testLog.dir/Timestamp.cc.o.provides.build: CMakeFiles/testLog.dir/Timestamp.cc.o


CMakeFiles/testLog.dir/CurrentThread.cc.o: CMakeFiles/testLog.dir/flags.make
CMakeFiles/testLog.dir/CurrentThread.cc.o: ../CurrentThread.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jmx/project/logger4cpp/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/testLog.dir/CurrentThread.cc.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/testLog.dir/CurrentThread.cc.o -c /home/jmx/project/logger4cpp/CurrentThread.cc

CMakeFiles/testLog.dir/CurrentThread.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/testLog.dir/CurrentThread.cc.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jmx/project/logger4cpp/CurrentThread.cc > CMakeFiles/testLog.dir/CurrentThread.cc.i

CMakeFiles/testLog.dir/CurrentThread.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/testLog.dir/CurrentThread.cc.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jmx/project/logger4cpp/CurrentThread.cc -o CMakeFiles/testLog.dir/CurrentThread.cc.s

CMakeFiles/testLog.dir/CurrentThread.cc.o.requires:

.PHONY : CMakeFiles/testLog.dir/CurrentThread.cc.o.requires

CMakeFiles/testLog.dir/CurrentThread.cc.o.provides: CMakeFiles/testLog.dir/CurrentThread.cc.o.requires
	$(MAKE) -f CMakeFiles/testLog.dir/build.make CMakeFiles/testLog.dir/CurrentThread.cc.o.provides.build
.PHONY : CMakeFiles/testLog.dir/CurrentThread.cc.o.provides

CMakeFiles/testLog.dir/CurrentThread.cc.o.provides.build: CMakeFiles/testLog.dir/CurrentThread.cc.o


# Object files for target testLog
testLog_OBJECTS = \
"CMakeFiles/testLog.dir/test.cc.o" \
"CMakeFiles/testLog.dir/Logging.cc.o" \
"CMakeFiles/testLog.dir/LogStream.cc.o" \
"CMakeFiles/testLog.dir/Timestamp.cc.o" \
"CMakeFiles/testLog.dir/CurrentThread.cc.o"

# External object files for target testLog
testLog_EXTERNAL_OBJECTS =

../bin/testLog: CMakeFiles/testLog.dir/test.cc.o
../bin/testLog: CMakeFiles/testLog.dir/Logging.cc.o
../bin/testLog: CMakeFiles/testLog.dir/LogStream.cc.o
../bin/testLog: CMakeFiles/testLog.dir/Timestamp.cc.o
../bin/testLog: CMakeFiles/testLog.dir/CurrentThread.cc.o
../bin/testLog: CMakeFiles/testLog.dir/build.make
../bin/testLog: CMakeFiles/testLog.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/jmx/project/logger4cpp/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Linking CXX executable ../bin/testLog"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/testLog.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/testLog.dir/build: ../bin/testLog

.PHONY : CMakeFiles/testLog.dir/build

CMakeFiles/testLog.dir/requires: CMakeFiles/testLog.dir/test.cc.o.requires
CMakeFiles/testLog.dir/requires: CMakeFiles/testLog.dir/Logging.cc.o.requires
CMakeFiles/testLog.dir/requires: CMakeFiles/testLog.dir/LogStream.cc.o.requires
CMakeFiles/testLog.dir/requires: CMakeFiles/testLog.dir/Timestamp.cc.o.requires
CMakeFiles/testLog.dir/requires: CMakeFiles/testLog.dir/CurrentThread.cc.o.requires

.PHONY : CMakeFiles/testLog.dir/requires

CMakeFiles/testLog.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/testLog.dir/cmake_clean.cmake
.PHONY : CMakeFiles/testLog.dir/clean

CMakeFiles/testLog.dir/depend:
	cd /home/jmx/project/logger4cpp/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/jmx/project/logger4cpp /home/jmx/project/logger4cpp /home/jmx/project/logger4cpp/build /home/jmx/project/logger4cpp/build /home/jmx/project/logger4cpp/build/CMakeFiles/testLog.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/testLog.dir/depend
