########################################################################
#
# Requirements and dependencies:

cmake_minimum_required(VERSION 3.14)
project(OBD_II_Emulator)

set(CMAKE_CXX_STANDARD 14)
# Enable 'rdyamic' switch to export the executable's symbols for debugging
set(CMAKE_ENABLE_EXPORTS 1)
# Fetching GoogleTest 1.11.0 for unit testing
include(FetchContent)
FetchContent_Declare(
  googletest
  URL https://github.com/google/googletest/archive/8d51ffdfab10b3fba636ae69bc03da4b54f8c235.zip
)

FetchContent_MakeAvailable(googletest)

########################################################################
#
# Options:

option(build_tests "Build all the tests." ON)
option(gtest_disable_pthreads "Disable uses of pthreads in gtest." OFF)
option(build_samples "Build all the samples." OFF)

########################################################################
#
# Include Directory:

set(include_dir
  "${PROJECT_SOURCE_DIR}/include")

# Source Directory:

set(source_dir
  "${PROJECT_SOURCE_DIR}/src")

# Test Directory:

set(test_dir
  "${PROJECT_SOURCE_DIR}/test")

# Samples Directory

set(sample_dir
  "${PROJECT_SOURCE_DIR}/samples")

########################################################################

include_directories(${include_dir})

add_library(
  obd_ii_emulator
  ${source_dir}/can_frame.cpp
)

target_include_directories(obd_ii_emulator
  INTERFACE ${include_dir}
)

if(build_tests)
  enable_testing()

  add_executable(
    obd_ii_emulator_test
    ${test_dir}/can_frame_test.cpp
  )

  target_link_libraries(
    obd_ii_emulator_test
    gtest_main
    obd_ii_emulator
  )

  include(GoogleTest)
  gtest_discover_tests(obd_ii_emulator_test)
endif()