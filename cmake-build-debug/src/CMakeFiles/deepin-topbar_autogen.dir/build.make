# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.14

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
CMAKE_COMMAND = /home/wangchao/Documents/work/clion-2019.1.4/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /home/wangchao/Documents/work/clion-2019.1.4/bin/cmake/linux/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/wangchao/Desktop/deepin-topbar

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/wangchao/Desktop/deepin-topbar/cmake-build-debug

# Utility rule file for deepin-topbar_autogen.

# Include the progress variables for this target.
include src/CMakeFiles/deepin-topbar_autogen.dir/progress.make

src/CMakeFiles/deepin-topbar_autogen:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/wangchao/Desktop/deepin-topbar/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Automatic MOC for target deepin-topbar"
	cd /home/wangchao/Desktop/deepin-topbar/cmake-build-debug/src && /home/wangchao/Documents/work/clion-2019.1.4/bin/cmake/linux/bin/cmake -E cmake_autogen /home/wangchao/Desktop/deepin-topbar/cmake-build-debug/src/CMakeFiles/deepin-topbar_autogen.dir/AutogenInfo.cmake Debug

deepin-topbar_autogen: src/CMakeFiles/deepin-topbar_autogen
deepin-topbar_autogen: src/CMakeFiles/deepin-topbar_autogen.dir/build.make

.PHONY : deepin-topbar_autogen

# Rule to build all files generated by this target.
src/CMakeFiles/deepin-topbar_autogen.dir/build: deepin-topbar_autogen

.PHONY : src/CMakeFiles/deepin-topbar_autogen.dir/build

src/CMakeFiles/deepin-topbar_autogen.dir/clean:
	cd /home/wangchao/Desktop/deepin-topbar/cmake-build-debug/src && $(CMAKE_COMMAND) -P CMakeFiles/deepin-topbar_autogen.dir/cmake_clean.cmake
.PHONY : src/CMakeFiles/deepin-topbar_autogen.dir/clean

src/CMakeFiles/deepin-topbar_autogen.dir/depend:
	cd /home/wangchao/Desktop/deepin-topbar/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/wangchao/Desktop/deepin-topbar /home/wangchao/Desktop/deepin-topbar/src /home/wangchao/Desktop/deepin-topbar/cmake-build-debug /home/wangchao/Desktop/deepin-topbar/cmake-build-debug/src /home/wangchao/Desktop/deepin-topbar/cmake-build-debug/src/CMakeFiles/deepin-topbar_autogen.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/CMakeFiles/deepin-topbar_autogen.dir/depend

