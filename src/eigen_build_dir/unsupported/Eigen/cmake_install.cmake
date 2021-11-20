# Install script for directory: /Users/jose/Documents/GitHub/STFC/src/eigen/unsupported/Eigen

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
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

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/Library/Developer/CommandLineTools/usr/bin/objdump")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xDevelx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/eigen3/unsupported/Eigen" TYPE FILE FILES
    "/Users/jose/Documents/GitHub/STFC/src/eigen/unsupported/Eigen/AdolcForward"
    "/Users/jose/Documents/GitHub/STFC/src/eigen/unsupported/Eigen/AlignedVector3"
    "/Users/jose/Documents/GitHub/STFC/src/eigen/unsupported/Eigen/ArpackSupport"
    "/Users/jose/Documents/GitHub/STFC/src/eigen/unsupported/Eigen/AutoDiff"
    "/Users/jose/Documents/GitHub/STFC/src/eigen/unsupported/Eigen/BVH"
    "/Users/jose/Documents/GitHub/STFC/src/eigen/unsupported/Eigen/EulerAngles"
    "/Users/jose/Documents/GitHub/STFC/src/eigen/unsupported/Eigen/FFT"
    "/Users/jose/Documents/GitHub/STFC/src/eigen/unsupported/Eigen/IterativeSolvers"
    "/Users/jose/Documents/GitHub/STFC/src/eigen/unsupported/Eigen/KroneckerProduct"
    "/Users/jose/Documents/GitHub/STFC/src/eigen/unsupported/Eigen/LevenbergMarquardt"
    "/Users/jose/Documents/GitHub/STFC/src/eigen/unsupported/Eigen/MatrixFunctions"
    "/Users/jose/Documents/GitHub/STFC/src/eigen/unsupported/Eigen/MoreVectorization"
    "/Users/jose/Documents/GitHub/STFC/src/eigen/unsupported/Eigen/MPRealSupport"
    "/Users/jose/Documents/GitHub/STFC/src/eigen/unsupported/Eigen/NonLinearOptimization"
    "/Users/jose/Documents/GitHub/STFC/src/eigen/unsupported/Eigen/NumericalDiff"
    "/Users/jose/Documents/GitHub/STFC/src/eigen/unsupported/Eigen/OpenGLSupport"
    "/Users/jose/Documents/GitHub/STFC/src/eigen/unsupported/Eigen/Polynomials"
    "/Users/jose/Documents/GitHub/STFC/src/eigen/unsupported/Eigen/Skyline"
    "/Users/jose/Documents/GitHub/STFC/src/eigen/unsupported/Eigen/SparseExtra"
    "/Users/jose/Documents/GitHub/STFC/src/eigen/unsupported/Eigen/SpecialFunctions"
    "/Users/jose/Documents/GitHub/STFC/src/eigen/unsupported/Eigen/Splines"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xDevelx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/eigen3/unsupported/Eigen" TYPE DIRECTORY FILES "/Users/jose/Documents/GitHub/STFC/src/eigen/unsupported/Eigen/src" FILES_MATCHING REGEX "/[^/]*\\.h$")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/Users/jose/Documents/GitHub/STFC/src/eigen_build_dir/unsupported/Eigen/CXX11/cmake_install.cmake")

endif()

