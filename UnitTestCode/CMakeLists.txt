# set cmake flags for all warnings & enable debuging
cmake_minimum_required(VERSION 2.8)
set (CMAKE_C_FLAGS "-Wall -g")

file(GLOB TestingSourceFile *.cpp *.h)

add_executable (TestingCode ${TestingSourceFile})

#enable_testing()
# find_package(GTest REQUIRED)
#include_directories(${GTEST_INCLUDE_DIRS})

# target_link_libraries(TestingCode ${GTEST_BOTH_LIBRARIES})
