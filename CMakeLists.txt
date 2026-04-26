## Copyright (C) 1999-2005 Open Source Telecom Corporation.
## Copyright (C) 2006-2008 David Sugar, Tycho Softworks.
## Copyright (C) 2009-2014 David Sugar, Tycho Softworks, Werner Dittmann
## Copyright (C) 2015 Cherokees of Idaho, Werner Dittmann
##
## This file is free software; as a special exception the author gives
## unlimited permission to copy and/or distribute it, with or without
## modifications, as long as this notice is preserved.
##
## This program is distributed in the hope that it will be useful, but
## WITHOUT ANY WARRANTY, to the extent permitted by law; without even the
## implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
#

cmake_minimum_required(VERSION 2.6)

PROJECT(ccrtp)
set (VERSION 2.1.2)
set (USES_UCOMMON_REQUIRED 6.3.1)

option(BUILD_STATIC "Set to OFF to build shared libraries" OFF)

MESSAGE( STATUS "Configuring GNU ${PROJECT_NAME} ${VERSION}...")

# include all the fine stuff we need
include(cmake/Modules/FindGcryptConfig.cmake)
include(FindPkgConfig)
include(CheckLibraryExists)
include(CheckIncludeFiles)
include(GNUInstallDirs)

# obsoleted, we may use cape macros for this...
#if(${PROJECT_NAME} STREQUAL ${CMAKE_PROJECT_NAME})
#    include(cmake/Modules/GeneratePackage.cmake)
#
#    GENERATE_PACKAGING(${PACKAGE} ${VERSION})
#endif()

# setup the Thread include and lib
find_package(Threads)
if (CMAKE_HAVE_PTHREAD_H)
    set(HAVE_PTHREAD_H TRUE)
endif()
set (LIBS ${LIBS} ${CMAKE_THREAD_LIBS_INIT})

if (USES_UCOMMON_INCLUDE_DIRS)
    message(STATUS "  Using local commoncpp dependency")
else()
    find_package(PkgConfig)
    pkg_check_modules(USES_UCOMMON commoncpp>=${USES_UCOMMON_REQUIRED})
endif()

include_directories(${USES_UCOMMON_INCLUDE_DIRS} ${CMAKE_CURRENT_SOURCE_DIR}/src/ccrtp ${CMAKE_CURRENT_BINARY_DIR}/src ${CMAKE_CURRENT_SOURCE_DIR}/src/ccrtp ${WITH_INCLUDES})
link_directories(${USES_UCOMMON_LIBRARY_DIRS})
add_definitions(${USES_UCOMMON_CFLAGS} ${WITH_CFLAGS})
set (LIBS ${LIBS} ${USES_UCOMMON_LDFLAGS} commoncpp ${USES_UCOMMON_LIBRARIES})

if(USES_UCOMMON_CMAKE_MACROS)
	set(CMAKE_MODULE_PATH "${USES_UCOMMON_CMAKE_MACROS}")
elseif(EXISTS "${USES_UCOMMON_PREFIX}/share/ucommon/cmake")
	set(CMAKE_MODULE_PATH "${USES_UCOMMON_PREFIX}/share/ucommon/cmake")
else()
	set(CMAKE_MODULE_PATH "${CMAKE_INSTALL_FULL_DATADIR}/ucommon/cmake")
endif()

include(CapeConfig)
include(CapeMakeTargets)

enable_arg(srtp true)

if(CMAKE_COMPILER_IS_GNUCXX)
  add_definitions(-g -O2 -fno-strict-aliasing)
  add_definitions(-Wno-long-long -Wno-char-subscripts)
  add_definitions(-Wall -ansi -pedantic)
endif()

if(WIN32 AND NOT CYGWIN AND NOT MSYS AND NOT MINGW)
  check_include_files(openssl/ssl.h HAVE_OPENSSL_WINDOWS)
else()
  pkg_check_modules(OPENSSL libssl>=0.9.8)
endif()

if (enable_srtp)
  # now get info about crypto libraries
  gcr_check(GCRYPT gcrypt)
  if (GCRYPT_FOUND AND NOT OPENSSL_FOUND)
    set(SRTP_SUPPORT TRUE)
    check_include_files(gcrypt.h HAVE_GCRYPT_H)
    set(LIBS ${LIBS} ${GCRYPT_LIBRARIES})
  else ()
    set(GCRYPT_FOUND FALSE)
    if (OPENSSL_FOUND OR HAVE_OPENSSL_WINDOWS)
      set(SRTP_SUPPORT TRUE)
      check_include_files(openssl/bn.h HAVE_OPENSSL_BN_H)
      check_include_files(openssl/aes.h HAVE_OPENSSL_AES_H)
      check_include_files(openssl/sha.h HAVE_OPENSSL_SHA_H)
      check_library_exists(crypto EVP_CipherInit_ex "" HAVE_SSL_CRYPT)
      if(HAVE_OPENSSL_WINDOWS)
        set(LIBS ${LIBS} libeay32)
      else()
        set(LIBS ${LIBS} -lcrypto)
      endif()
    else()
      message(WARNING "No crypto library found")
    endif()
  endif()
endif()

# now prepare and go for the sub-directories
include_directories(${CMAKE_CURRENT_BINARY_DIR}/src ${CMAKE_CURRENT_SOURCE_DIR}/src ${CMAKE_CURRENT_SOURCE_DIR}/src/ccrtp)

create_headers()
create_specfile()
create_pcfiles(pc_files libccrtp)
create_scripts(noinst_scr PKGBUILD)

add_subdirectory(src)

add_subdirectory(demo)

add_subdirectory(doc)

########### install files ###############
install(FILES ${pc_files} DESTINATION ${CMAKE_INSTALL_LIBDIR}/pkgconfig)

#if(${PROJECT_NAME} STREQUAL ${CMAKE_PROJECT_NAME})
#
#    ########### Add uninstall target ###############
#    configure_file(
#    "${CMAKE_CURRENT_SOURCE_DIR}/cmake/cmake_uninstall.cmake.in"
#    "${CMAKE_CURRENT_BINARY_DIR}/cmake_uninstall.cmake"
#    IMMEDIATE @ONLY)
#    add_custom_target(uninstall
#    "${CMAKE_COMMAND}" -P "${CMAKE_CURRENT_BINARY_DIR}/cmake_uninstall.cmake")
#endif()

####### define target to build RPM
#include(UseRPMTools)
#if(RPMTools_FOUND)
#  RPMTools_ADD_RPM_TARGETS(${PROJECT_NAME} ${CMAKE_SOURCE_DIR}/ccrtp.spec.cmake)
#endif()
add_make_uninstall_target()
