# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

if(EXISTS "/home/siyer/.emacs.d/elpa/vterm-20220429.21/build/libvterm-prefix/src/libvterm-stamp/libvterm-gitclone-lastrun.txt" AND EXISTS "/home/siyer/.emacs.d/elpa/vterm-20220429.21/build/libvterm-prefix/src/libvterm-stamp/libvterm-gitinfo.txt" AND
  "/home/siyer/.emacs.d/elpa/vterm-20220429.21/build/libvterm-prefix/src/libvterm-stamp/libvterm-gitclone-lastrun.txt" IS_NEWER_THAN "/home/siyer/.emacs.d/elpa/vterm-20220429.21/build/libvterm-prefix/src/libvterm-stamp/libvterm-gitinfo.txt")
  message(STATUS
    "Avoiding repeated git clone, stamp file is up to date: "
    "'/home/siyer/.emacs.d/elpa/vterm-20220429.21/build/libvterm-prefix/src/libvterm-stamp/libvterm-gitclone-lastrun.txt'"
  )
  return()
endif()

execute_process(
  COMMAND ${CMAKE_COMMAND} -E rm -rf "/home/siyer/.emacs.d/elpa/vterm-20220429.21/build/libvterm-prefix/src/libvterm"
  RESULT_VARIABLE error_code
)
if(error_code)
  message(FATAL_ERROR "Failed to remove directory: '/home/siyer/.emacs.d/elpa/vterm-20220429.21/build/libvterm-prefix/src/libvterm'")
endif()

# try the clone 3 times in case there is an odd git clone issue
set(error_code 1)
set(number_of_tries 0)
while(error_code AND number_of_tries LESS 3)
  execute_process(
    COMMAND "/usr/bin/git" 
            clone --no-checkout --config "advice.detachedHead=false" "https://github.com/neovim/libvterm.git" "libvterm"
    WORKING_DIRECTORY "/home/siyer/.emacs.d/elpa/vterm-20220429.21/build/libvterm-prefix/src"
    RESULT_VARIABLE error_code
  )
  math(EXPR number_of_tries "${number_of_tries} + 1")
endwhile()
if(number_of_tries GREATER 1)
  message(STATUS "Had to git clone more than once: ${number_of_tries} times.")
endif()
if(error_code)
  message(FATAL_ERROR "Failed to clone repository: 'https://github.com/neovim/libvterm.git'")
endif()

execute_process(
  COMMAND "/usr/bin/git" 
          checkout "54c03b21f763fa775a4c0643a9d8326342873179" --
  WORKING_DIRECTORY "/home/siyer/.emacs.d/elpa/vterm-20220429.21/build/libvterm-prefix/src/libvterm"
  RESULT_VARIABLE error_code
)
if(error_code)
  message(FATAL_ERROR "Failed to checkout tag: '54c03b21f763fa775a4c0643a9d8326342873179'")
endif()

set(init_submodules TRUE)
if(init_submodules)
  execute_process(
    COMMAND "/usr/bin/git" 
            submodule update --recursive --init 
    WORKING_DIRECTORY "/home/siyer/.emacs.d/elpa/vterm-20220429.21/build/libvterm-prefix/src/libvterm"
    RESULT_VARIABLE error_code
  )
endif()
if(error_code)
  message(FATAL_ERROR "Failed to update submodules in: '/home/siyer/.emacs.d/elpa/vterm-20220429.21/build/libvterm-prefix/src/libvterm'")
endif()

# Complete success, update the script-last-run stamp file:
#
execute_process(
  COMMAND ${CMAKE_COMMAND} -E copy "/home/siyer/.emacs.d/elpa/vterm-20220429.21/build/libvterm-prefix/src/libvterm-stamp/libvterm-gitinfo.txt" "/home/siyer/.emacs.d/elpa/vterm-20220429.21/build/libvterm-prefix/src/libvterm-stamp/libvterm-gitclone-lastrun.txt"
  RESULT_VARIABLE error_code
)
if(error_code)
  message(FATAL_ERROR "Failed to copy script-last-run stamp file: '/home/siyer/.emacs.d/elpa/vterm-20220429.21/build/libvterm-prefix/src/libvterm-stamp/libvterm-gitclone-lastrun.txt'")
endif()