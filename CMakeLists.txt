cmake_minimum_required(VERSION 2.8.12)
project(sleep)

# Using the "cmake" generator
include(${CMAKE_BINARY_DIR}/conanbuildinfo.cmake)
conan_basic_setup(TARGETS)

add_executable(sleep sleep.cpp)

target_link_libraries(sleep CONAN_PKG::poco)

enable_testing()

add_test(NAME myTest COMMAND sleep)
