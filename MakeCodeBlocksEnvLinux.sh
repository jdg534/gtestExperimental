#!/bin/bash

mkdir build

cd build
cmake ../ -G "CodeBlocks - Unix Makefiles"
cmake --build .
ctest -VV

PAUSE
