cmake_minimum_required(VERSION 2.8)

set(PROJECT_NAME_SRING GtestExpremental)

project (${PROJECT_NAME_SRING} C CXX)

find_package(Threads REQUIRED)

# a guide line: https://github.com/snikulov/google-test-examples/blob/master/CMakeLists.txt

if(CMAKE_COMPILER_IS_GNUCXX)
    add_definitions(-Wall -ansi -Wno-deprecated -pthread)
endif()

if(MSVC)
    #vc 2012 fix for vararg templates
    set(MSVC_COMPILER_DEFS "-D_VARIADIC_MAX=10")
endif() 

set(EXTERNAL_CODE_DIR ${PROJECT_SOURCE_DIR}/ExternalCode)

add_subdirectory (${EXTERNAL_CODE_DIR}/gtest)




add_subdirectory (SourceCode)
add_subdirectory (UnitTestCode)

set (CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_HOME_DIRECTORY}/Build)