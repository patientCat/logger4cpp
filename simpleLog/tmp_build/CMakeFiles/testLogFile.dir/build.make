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
CMAKE_SOURCE_DIR = /home/jmx/project/logger4cpp/simpleLog

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/jmx/project/logger4cpp/simpleLog/tmp_build

# Include any dependencies generated for this target.
include CMakeFiles/testLogFile.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/testLogFile.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/testLogFile.dir/flags.make

CMakeFiles/testLogFile.dir/testLogFile.cc.o: CMakeFiles/testLogFile.dir/flags.make
CMakeFiles/testLogFile.dir/testLogFile.cc.o: ../testLogFile.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jmx/project/logger4cpp/simpleLog/tmp_build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/testLogFile.dir/testLogFile.cc.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/testLogFile.dir/testLogFile.cc.o -c /home/jmx/project/logger4cpp/simpleLog/testLogFile.cc

CMakeFiles/testLogFile.dir/testLogFile.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/testLogFile.dir/testLogFile.cc.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jmx/project/logger4cpp/simpleLog/testLogFile.cc > CMakeFiles/testLogFile.dir/testLogFile.cc.i

CMakeFiles/testLogFile.dir/testLogFile.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/testLogFile.dir/testLogFile.cc.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jmx/project/logger4cpp/simpleLog/testLogFile.cc -o CMakeFiles/testLogFile.dir/testLogFile.cc.s

CMakeFiles/testLogFile.dir/testLogFile.cc.o.requires:

.PHONY : CMakeFiles/testLogFile.dir/testLogFile.cc.o.requires

CMakeFiles/testLogFile.dir/testLogFile.cc.o.provides: CMakeFiles/testLogFile.dir/testLogFile.cc.o.requires
	$(MAKE) -f CMakeFiles/testLogFile.dir/build.make CMakeFiles/testLogFile.dir/testLogFile.cc.o.provides.build
.PHONY : CMakeFiles/testLogFile.dir/testLogFile.cc.o.provides

CMakeFiles/testLogFile.dir/testLogFile.cc.o.provides.build: CMakeFiles/testLogFile.dir/testLogFile.cc.o


CMakeFiles/testLogFile.dir/SimpleLogger.cc.o: CMakeFiles/testLogFile.dir/flags.make
CMakeFiles/testLogFile.dir/SimpleLogger.cc.o: ../SimpleLogger.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jmx/project/logger4cpp/simpleLog/tmp_build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/testLogFile.dir/SimpleLogger.cc.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/testLogFile.dir/SimpleLogger.cc.o -c /home/jmx/project/logger4cpp/simpleLog/SimpleLogger.cc

CMakeFiles/testLogFile.dir/SimpleLogger.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/testLogFile.dir/SimpleLogger.cc.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jmx/project/logger4cpp/simpleLog/SimpleLogger.cc > CMakeFiles/testLogFile.dir/SimpleLogger.cc.i

CMakeFiles/testLogFile.dir/SimpleLogger.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/testLogFile.dir/SimpleLogger.cc.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jmx/project/logger4cpp/simpleLog/SimpleLogger.cc -o CMakeFiles/testLogFile.dir/SimpleLogger.cc.s

CMakeFiles/testLogFile.dir/SimpleLogger.cc.o.requires:

.PHONY : CMakeFiles/testLogFile.dir/SimpleLogger.cc.o.requires

CMakeFiles/testLogFile.dir/SimpleLogger.cc.o.provides: CMakeFiles/testLogFile.dir/SimpleLogger.cc.o.requires
	$(MAKE) -f CMakeFiles/testLogFile.dir/build.make CMakeFiles/testLogFile.dir/SimpleLogger.cc.o.provides.build
.PHONY : CMakeFiles/testLogFile.dir/SimpleLogger.cc.o.provides

CMakeFiles/testLogFile.dir/SimpleLogger.cc.o.provides.build: CMakeFiles/testLogFile.dir/SimpleLogger.cc.o


CMakeFiles/testLogFile.dir/LogFile.cc.o: CMakeFiles/testLogFile.dir/flags.make
CMakeFiles/testLogFile.dir/LogFile.cc.o: ../LogFile.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jmx/project/logger4cpp/simpleLog/tmp_build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/testLogFile.dir/LogFile.cc.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/testLogFile.dir/LogFile.cc.o -c /home/jmx/project/logger4cpp/simpleLog/LogFile.cc

CMakeFiles/testLogFile.dir/LogFile.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/testLogFile.dir/LogFile.cc.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jmx/project/logger4cpp/simpleLog/LogFile.cc > CMakeFiles/testLogFile.dir/LogFile.cc.i

CMakeFiles/testLogFile.dir/LogFile.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/testLogFile.dir/LogFile.cc.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jmx/project/logger4cpp/simpleLog/LogFile.cc -o CMakeFiles/testLogFile.dir/LogFile.cc.s

CMakeFiles/testLogFile.dir/LogFile.cc.o.requires:

.PHONY : CMakeFiles/testLogFile.dir/LogFile.cc.o.requires

CMakeFiles/testLogFile.dir/LogFile.cc.o.provides: CMakeFiles/testLogFile.dir/LogFile.cc.o.requires
	$(MAKE) -f CMakeFiles/testLogFile.dir/build.make CMakeFiles/testLogFile.dir/LogFile.cc.o.provides.build
.PHONY : CMakeFiles/testLogFile.dir/LogFile.cc.o.provides

CMakeFiles/testLogFile.dir/LogFile.cc.o.provides.build: CMakeFiles/testLogFile.dir/LogFile.cc.o


CMakeFiles/testLogFile.dir/AsyncLogging.cc.o: CMakeFiles/testLogFile.dir/flags.make
CMakeFiles/testLogFile.dir/AsyncLogging.cc.o: ../AsyncLogging.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jmx/project/logger4cpp/simpleLog/tmp_build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/testLogFile.dir/AsyncLogging.cc.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/testLogFile.dir/AsyncLogging.cc.o -c /home/jmx/project/logger4cpp/simpleLog/AsyncLogging.cc

CMakeFiles/testLogFile.dir/AsyncLogging.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/testLogFile.dir/AsyncLogging.cc.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jmx/project/logger4cpp/simpleLog/AsyncLogging.cc > CMakeFiles/testLogFile.dir/AsyncLogging.cc.i

CMakeFiles/testLogFile.dir/AsyncLogging.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/testLogFile.dir/AsyncLogging.cc.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jmx/project/logger4cpp/simpleLog/AsyncLogging.cc -o CMakeFiles/testLogFile.dir/AsyncLogging.cc.s

CMakeFiles/testLogFile.dir/AsyncLogging.cc.o.requires:

.PHONY : CMakeFiles/testLogFile.dir/AsyncLogging.cc.o.requires

CMakeFiles/testLogFile.dir/AsyncLogging.cc.o.provides: CMakeFiles/testLogFile.dir/AsyncLogging.cc.o.requires
	$(MAKE) -f CMakeFiles/testLogFile.dir/build.make CMakeFiles/testLogFile.dir/AsyncLogging.cc.o.provides.build
.PHONY : CMakeFiles/testLogFile.dir/AsyncLogging.cc.o.provides

CMakeFiles/testLogFile.dir/AsyncLogging.cc.o.provides.build: CMakeFiles/testLogFile.dir/AsyncLogging.cc.o


# Object files for target testLogFile
testLogFile_OBJECTS = \
"CMakeFiles/testLogFile.dir/testLogFile.cc.o" \
"CMakeFiles/testLogFile.dir/SimpleLogger.cc.o" \
"CMakeFiles/testLogFile.dir/LogFile.cc.o" \
"CMakeFiles/testLogFile.dir/AsyncLogging.cc.o"

# External object files for target testLogFile
testLogFile_EXTERNAL_OBJECTS =

../bin/testLogFile: CMakeFiles/testLogFile.dir/testLogFile.cc.o
../bin/testLogFile: CMakeFiles/testLogFile.dir/SimpleLogger.cc.o
../bin/testLogFile: CMakeFiles/testLogFile.dir/LogFile.cc.o
../bin/testLogFile: CMakeFiles/testLogFile.dir/AsyncLogging.cc.o
../bin/testLogFile: CMakeFiles/testLogFile.dir/build.make
../bin/testLogFile: CMakeFiles/testLogFile.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/jmx/project/logger4cpp/simpleLog/tmp_build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking CXX executable ../bin/testLogFile"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/testLogFile.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/testLogFile.dir/build: ../bin/testLogFile

.PHONY : CMakeFiles/testLogFile.dir/build

CMakeFiles/testLogFile.dir/requires: CMakeFiles/testLogFile.dir/testLogFile.cc.o.requires
CMakeFiles/testLogFile.dir/requires: CMakeFiles/testLogFile.dir/SimpleLogger.cc.o.requires
CMakeFiles/testLogFile.dir/requires: CMakeFiles/testLogFile.dir/LogFile.cc.o.requires
CMakeFiles/testLogFile.dir/requires: CMakeFiles/testLogFile.dir/AsyncLogging.cc.o.requires

.PHONY : CMakeFiles/testLogFile.dir/requires

CMakeFiles/testLogFile.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/testLogFile.dir/cmake_clean.cmake
.PHONY : CMakeFiles/testLogFile.dir/clean

CMakeFiles/testLogFile.dir/depend:
	cd /home/jmx/project/logger4cpp/simpleLog/tmp_build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/jmx/project/logger4cpp/simpleLog /home/jmx/project/logger4cpp/simpleLog /home/jmx/project/logger4cpp/simpleLog/tmp_build /home/jmx/project/logger4cpp/simpleLog/tmp_build /home/jmx/project/logger4cpp/simpleLog/tmp_build/CMakeFiles/testLogFile.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/testLogFile.dir/depend
