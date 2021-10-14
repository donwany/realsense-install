!# bin/sh


# 1. install cmake first


brew install openssl
brew link --force openssl
git clone https://github.com/IntelRealSense/librealsense
cd librealsense
mkdir build
cd build
cmake ../ -DBUILD_PYTHON_BINDINGS=TRUE
make -j4
sudo make install #Optional if you want the library to be installed in your system
