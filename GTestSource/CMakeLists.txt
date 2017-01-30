# this is for building gtest with the testing code (compile this the same flags)

cmake_minimum_required(VERSION 2.8)
set (CMAKE_C_FLAGS "-Wall -g")

file(GLOB GTestSourceFiles *.cc *.h *.pump)

add_library (GTestLibrary ${GTestSourceFiles})