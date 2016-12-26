# set current directory to where the script is being run from
cd $(dirname "$0")

mkdir Build
cd Build

# Remember, cmake outputs to where ever is the current directory (cd Build)
cmake ../ -G "Xcode"