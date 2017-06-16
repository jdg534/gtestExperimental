mkdir build

cd build
cmake ..
cmake --build .
ctest -VV

PAUSE