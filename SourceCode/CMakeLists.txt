# set cmake flags for all warnings & enable debuging
cmake_minimum_required(VERSION 2.8)
set (CMAKE_C_FLAGS "-Wall -g")

file(GLOB SourceFiles main.cpp *.h)

add_executable (CodeToTest ${SourceFiles})


###############################################################

# start of initial unit test setup. a useful souce: https://cmake.org/cmake/help/v3.0/module/FindGTest.html
# need to define: GTEST_LIBRARY GTEST_INCLUDE_DIR GTEST_MAIN_LIBRARY

set(GTEST_ROOT  "../gtest_prebuilt_1_8_0")

#if (WIN32)
	#set(GTEST_LIBRARY "../gtest_prebuilt_1_8_0/lib_win32/gtest") # Cmake appears to append .lib when using visual studio
	#set(GTEST_MAIN_LIBRARY "../gtest_prebuilt_1_8_0/lib_win32/gtest_main") # (following same logic as the above comment)
# add OSX & / or Linux pre-built when the windows version is working

#endif()


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
