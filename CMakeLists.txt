cmake_minimum_required(VERSION 2.8)
project (MultiPlatformTDD)
# add_subdirectory (<Relative Folder string here>)


add_subdirectory (SourceCode)
#add_subdirectory (UnitTests)

set (CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_HOME_DIRECTORY}/Build)