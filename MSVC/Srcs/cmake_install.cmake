# Install script for directory: C:/Users/liuzi/Documents/GitHub/HEIF-Utility-Native-DLL/Srcs

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "C:/Program Files/HEIF")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("C:/Users/liuzi/Documents/GitHub/HEIF-Utility-Native-DLL/MSVC/Srcs/common/cmake_install.cmake")
  include("C:/Users/liuzi/Documents/GitHub/HEIF-Utility-Native-DLL/MSVC/Srcs/jsonlib/cmake_install.cmake")
  include("C:/Users/liuzi/Documents/GitHub/HEIF-Utility-Native-DLL/MSVC/Srcs/parser/cmake_install.cmake")
  include("C:/Users/liuzi/Documents/GitHub/HEIF-Utility-Native-DLL/MSVC/Srcs/reader/cmake_install.cmake")
  include("C:/Users/liuzi/Documents/GitHub/HEIF-Utility-Native-DLL/MSVC/Srcs/writer/cmake_install.cmake")
  include("C:/Users/liuzi/Documents/GitHub/HEIF-Utility-Native-DLL/MSVC/Srcs/HUD/cmake_install.cmake")

endif()

