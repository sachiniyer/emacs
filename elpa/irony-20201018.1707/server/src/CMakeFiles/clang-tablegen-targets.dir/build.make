# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.19

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
CMAKE_SOURCE_DIR = /home/siyer/.emacs.d/elpa/irony-20201018.1707/server

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/siyer/.emacs.d/elpa/irony-20201018.1707/server

# Utility rule file for clang-tablegen-targets.

# Include the progress variables for this target.
include src/CMakeFiles/clang-tablegen-targets.dir/progress.make

clang-tablegen-targets: src/CMakeFiles/clang-tablegen-targets.dir/build.make

.PHONY : clang-tablegen-targets

# Rule to build all files generated by this target.
src/CMakeFiles/clang-tablegen-targets.dir/build: clang-tablegen-targets

.PHONY : src/CMakeFiles/clang-tablegen-targets.dir/build

src/CMakeFiles/clang-tablegen-targets.dir/clean:
	cd /home/siyer/.emacs.d/elpa/irony-20201018.1707/server/src && $(CMAKE_COMMAND) -P CMakeFiles/clang-tablegen-targets.dir/cmake_clean.cmake
.PHONY : src/CMakeFiles/clang-tablegen-targets.dir/clean

src/CMakeFiles/clang-tablegen-targets.dir/depend:
	cd /home/siyer/.emacs.d/elpa/irony-20201018.1707/server && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/siyer/.emacs.d/elpa/irony-20201018.1707/server /home/siyer/.emacs.d/elpa/irony-20201018.1707/server/src /home/siyer/.emacs.d/elpa/irony-20201018.1707/server /home/siyer/.emacs.d/elpa/irony-20201018.1707/server/src /home/siyer/.emacs.d/elpa/irony-20201018.1707/server/src/CMakeFiles/clang-tablegen-targets.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/CMakeFiles/clang-tablegen-targets.dir/depend

