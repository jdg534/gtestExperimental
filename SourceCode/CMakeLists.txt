# set cmake flags for all warnings & enable debuging
cmake_minimum_required(VERSION 2.8)
set (CMAKE_C_FLAGS "-Wall -g")

file(GLOB SourceFiles main.cpp *.h)

add_executable (CodeToTest ${SourceFiles})