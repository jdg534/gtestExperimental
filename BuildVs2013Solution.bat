ECHO off
REM the .gitignore ignores a folder called "Build" (case sensitive)

mkdir Build

cd Build

cmake ../ -G "Visual Studio 12 2013"

ECHO The Build solution script has finshed

ECHO Pre starting running CMake on the remote gtest dir
PAUSE

REM run CMake a second time on the CMake output from the first run. (needed for pulling gtest)
cmake --build .

REM to run the unit tests with ctest then run "ctest -VV" from inside of build
ECHO Second part of the build script has finished
PAUSE