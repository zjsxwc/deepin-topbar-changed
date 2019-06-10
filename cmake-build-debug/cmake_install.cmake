# Install script for directory: /home/wangchao/Desktop/deepin-topbar

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Debug")
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

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/deepin-topbar/translations" TYPE FILE FILES
    "/home/wangchao/Desktop/deepin-topbar/translations/deepin-topbar_en_US.qm"
    "/home/wangchao/Desktop/deepin-topbar/translations/deepin-topbar_es_ES.qm"
    "/home/wangchao/Desktop/deepin-topbar/translations/deepin-topbar_fr_FR.qm"
    "/home/wangchao/Desktop/deepin-topbar/translations/deepin-topbar_id_ID.qm"
    "/home/wangchao/Desktop/deepin-topbar/translations/deepin-topbar_it_IT.qm"
    "/home/wangchao/Desktop/deepin-topbar/translations/deepin-topbar_ja_JP.qm"
    "/home/wangchao/Desktop/deepin-topbar/translations/deepin-topbar_pl_PL.qm"
    "/home/wangchao/Desktop/deepin-topbar/translations/deepin-topbar_pt_BR.qm"
    "/home/wangchao/Desktop/deepin-topbar/translations/deepin-topbar_ru_RU.qm"
    "/home/wangchao/Desktop/deepin-topbar/translations/deepin-topbar_tr_TR.qm"
    "/home/wangchao/Desktop/deepin-topbar/translations/deepin-topbar_zh_CN.qm"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dbus-1/services" TYPE FILE FILES "/home/wangchao/Desktop/deepin-topbar/com.deepin.dde.topbar.service")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/polkit-1/actions" TYPE FILE FILES "/home/wangchao/Desktop/deepin-topbar/com.deepin.dde.topbar.polkit.service")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/icons/hicolor/scalable/apps" TYPE FILE FILES
    "/home/wangchao/Desktop/deepin-topbar/deepin-topbar.svg"
    "/home/wangchao/Desktop/deepin-topbar/deepin-logo.svg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/applications" TYPE FILE FILES "/home/wangchao/Desktop/deepin-topbar/deepin-topbar.desktop")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/wangchao/Desktop/deepin-topbar/cmake-build-debug/src/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/wangchao/Desktop/deepin-topbar/cmake-build-debug/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
