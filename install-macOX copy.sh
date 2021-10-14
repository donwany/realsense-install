#! /bin/bash

########################################
# 1. install cmake first
#
#             MAC OX
#######################################

brew install openssl
brew link --force openssl
git clone https://github.com/IntelRealSense/librealsense
cd librealsense
mkdir build && build
cmake ../ -DBUILD_PYTHON_BINDINGS=TRUE
make -j4
sudo make install #Optional if you want the library to be installed in your system


# If it all goes without errors, you should be able to find the pyrealsense2.<arch info>.
# so under build/wrappers/python (actually 3 files with the same name and extensions .so, .so.2, .so.2.8.1).
# Now the easiest way to use it is run python from that folder and import pyrealsense2 from the terminal

# Example:

# $ python
# >>> import pyrealsense2 as rs

# import cv2                                # state of the art computer vision algorithms library
# import numpy as np                        # fundamental package for scientific computing
# import matplotlib.pyplot as plt           # 2D plotting library producing publication quality figures
# import pyrealsense2 as rs                 # Intel RealSense cross-platform open-source API
# print("Environment Ready")

##########################################
#         LINUX INSTALLATION
#########################################

#! /bin/bash

git clone https://github.com/JetsonHacksNano/installLibrealsense

cd installLibrealsense

./installLibrealsense.sh

# Type this command from the terminal. Greate Job!
realsense-viewer

# Or visit
# https://www.jetsonhacks.com/2019/12/22/install-realsense-camera-in-5-minutes-jetson-nano/