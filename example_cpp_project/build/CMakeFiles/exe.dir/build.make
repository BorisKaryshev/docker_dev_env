# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.28

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /root/files

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /root/files/build

# Utility rule file for exe.

# Include any custom commands dependencies for this target.
include CMakeFiles/exe.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/exe.dir/progress.make

CMakeFiles/exe: corutine_test
	./corutine_test

exe: CMakeFiles/exe
exe: CMakeFiles/exe.dir/build.make
.PHONY : exe

# Rule to build all files generated by this target.
CMakeFiles/exe.dir/build: exe
.PHONY : CMakeFiles/exe.dir/build

CMakeFiles/exe.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/exe.dir/cmake_clean.cmake
.PHONY : CMakeFiles/exe.dir/clean

CMakeFiles/exe.dir/depend:
	cd /root/files/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /root/files /root/files /root/files/build /root/files/build /root/files/build/CMakeFiles/exe.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/exe.dir/depend

