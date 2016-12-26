# set cmake flags for all warnings & enable debuging
cmake_minimum_required(VERSION 2.8)
set (CMAKE_C_FLAGS "-Wall -g")

file(GLOB SourceFiles *.cpp *.h)

add_executable (CodeToTest ${SourceFiles})


###############################################################

# start of initial unit test setup. a useful souce: https://cmake.org/cmake/help/v3.0/module/FindGTest.html

enable_testing()
find_package(GTest REQUIRED)
include_directories(${GTEST_INCLUDE_DIRS})

add_executable(TestingCode initialUnitTests.cpp)
target_link_libraries(TestingCode ${GTEST_BOTH_LIBRARIES})

add_test(TempAllUnitTests TestingCode)


#################################################################
# The next three lines lines are commented out code for adding an instance of a unit test
#set(FooTestArgs --foo 1 --bar 2)
#add_executable(FooTest FooUnitTest.cc)
#GTEST_ADD_TESTS(FooTest "${FooTestArgs}" FooUnitTest.cc)
