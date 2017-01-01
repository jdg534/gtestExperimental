ECHO off
REM the .gitignore ignores a folder called "Build" (case sensitive)



mkdir Build

cd Build

cmake ../ -G "Visual Studio 12 2013"

ECHO The Build solution script has finshed

PAUSE