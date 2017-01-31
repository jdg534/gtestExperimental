cmake_minimum_required(VERSION 2.8)
project (MultiPlatformTDD)
# add_subdirectory (<Relative Folder string here>)

#add_subdirectory (GTestSource)

find_package(Threads REQUIRED)

# a guide line: https://github.com/snikulov/google-test-examples/blob/master/CMakeLists.txt

add_subdirectory (googleTestRemote)
add_subdirectory (SourceCode)
add_subdirectory (UnitTestCode)

set (CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_HOME_DIRECTORY}/Build)