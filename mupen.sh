!/bin/bash

# Script to build and install mupen64 emulator on ClockworkPi GameShell from source.

# Script written by Hawanna

# For ClockworkPi GameShell

# ClockworkOS 0.3

# Inspired by knuxyl

# For ASUS Tinker Board

# ------------------------------------------------------------

# If you are not using the default user account, please change the user variable below to your username

user="cpi"

# Build source locations

if [[ ! -d "mupen" ]]; then

mkdir "mupen"

cd "mupen"

mkdir "zip"

mkdir "source"

else

sudo rm -R mupen

mkdir "mupen"

cd "mupen"

mkdir "zip"

mkdir "source"

fi

clear

# ------------------------------------------------------------

# Installing dependencies

# ------------------------------------------------------------

sudo apt-get install -y libfreetype6 libfreetype6-dev libpng-dev zlib1g-dev zlib1g libsdl2-2.0-0 libsdl2-dev python-pyqt5 pyqt5-dev-tools python-pyqt5.qtopengl qt5-default git p7zip-full python-pip python-setuptools libboost-dev libboost-filesystem-dev

clear

cd "source"

# ------------------------------------------------------------

# Downloading the latest packages and putting them in archives for backup

# ------------------------------------------------------------

echo "------------------------------------------------------------"

echo "--- Downloading mupen64plus-core ---"

echo "------------------------------------------------------------"

git clone --recursive --quiet https://github.com/mupen64plus/mupen64plus-core

7za a ../zip/mupen64plus-core.zip mupen64plus-core

echo "------------------------------------------------------------"

echo "--- Downloading mupen64plus-audio-sdl ---"

echo "------------------------------------------------------------"

git clone --recursive --quiet https://github.com/mupen64plus/mupen64plus-audio-sdl

7za a ../zip/mupen64plus-audio-sdl.zip mupen64plus-audio-sdl

echo "------------------------------------------------------------"

echo "--- Downloading mupen64plus-input-sdl ---"

echo "------------------------------------------------------------"

git clone --recursive --quiet https://github.com/mupen64plus/mupen64plus-input-sdl

7za a ../zip/mupen64plus-input-sdl.zip mupen64plus-input-sdl

echo "------------------------------------------------------------"

echo "--- Downloading mupen64plus-ui-console ---"

echo "------------------------------------------------------------"

git clone --recursive --quiet https://github.com/mupen64plus/mupen64plus-ui-console

7za a ../zip/mupen64plus-ui-console.zip mupen64plus-ui-console

echo "------------------------------------------------------------"

echo "--- Downloading mupen64plus-rsp-hle ---"

echo "------------------------------------------------------------"

git clone --recursive --quiet https://github.com/mupen64plus/mupen64plus-rsp-hle

7za a ../zip/mupen64plus-rsp-hle.zip mupen64plus-rsp-hle

echo "------------------------------------------------------------"

echo "--- Downloading mupen64plus-rsp-cxd4 ---"

echo "------------------------------------------------------------"

git clone --recursive --quiet https://github.com/mupen64plus/mupen64plus-rsp-cxd4

7za a ../zip/mupen64plus-rsp-cxd4.zip mupen64plus-rsp-cxd4

echo "------------------------------------------------------------"

echo "--- Downloading mupen64plus-rsp-z64 ---"

echo "------------------------------------------------------------"

git clone --recursive --quiet https://github.com/mupen64plus/mupen64plus-rsp-z64

7za a ../zip/mupen64plus-rsp-z64.zip mupen64plus-rsp-z64

echo "------------------------------------------------------------"

echo "--- Downloading mupen64plus-video-glide64mk2 ---"

echo "------------------------------------------------------------"

git clone --recursive --quiet https://github.com/mupen64plus/mupen64plus-video-glide64mk2

7za a ../zip/mupen64plus-video-glide64mk2.zip mupen64plus-video-glide64mk2

echo "------------------------------------------------------------"

echo "--- Downloading mupen64plus-video-arachnoid ---"

echo "------------------------------------------------------------"

git clone --recursive --quiet https://github.com/mupen64plus/mupen64plus-video-arachnoid

7za a ../zip/mupen64plus-video-arachnoid.zip mupen64plus-video-arachnoid

echo "------------------------------------------------------------"

echo "--- Downloading mupen64plus-video-rice ---"

echo "------------------------------------------------------------"

git clone --recursive --quiet https://github.com/mupen64plus/mupen64plus-video-rice

7za a ../zip/mupen64plus-video-rice.zip mupen64plus-video-rice

echo "------------------------------------------------------------"

echo "--- Downloading mupen64plus-video-z64 ---"

echo "------------------------------------------------------------"

git clone --recursive --quiet https://github.com/mupen64plus/mupen64plus-video-z64

7za a ../zip/mupen64plus-video-z64.zip mupen64plus-video-z64

# ------------------------------------------------------------

# Building all the packages and installing them

# ------------------------------------------------------------

echo "------------------------------------------------------------"

echo "--- Building core ---"

echo "------------------------------------------------------------"

cd mupen64plus-core/projects/unix

make NEON=1 VFP_HARD=1 USE_GLES=1 all

sudo NEON=1 VFP_HARD=1 USE_GLES=1 make install

echo "------------------------------------------------------------"

echo "--- Building audio-sdl ---"

echo "------------------------------------------------------------"

cd ../../../mupen64plus-audio-sdl/projects/unix

make NEON=1 VFP_HARD=1 USE_GLES=1 all

sudo make install

echo "------------------------------------------------------------"

echo "--- Building input-sdl ---"

echo "------------------------------------------------------------"

cd ../../../mupen64plus-input-sdl/projects/unix

make NEON=1 VFP_HARD=1 USE_GLES=1 all

sudo NEON=1 VFP_HARD=1 USE_GLES=1 make install

echo "------------------------------------------------------------"

echo "--- Building ui-console ---"

echo "------------------------------------------------------------"

cd ../../../mupen64plus-ui-console/projects/unix

make NEON=1 VFP_HARD=1 PIE=1 USE_GLES=1 all

sudo NEON=1 VFP_HARD=1 USE_GLES=1 make install

echo "------------------------------------------------------------"

echo "--- Building rsp-hle ---"

echo "------------------------------------------------------------"

cd ../../../mupen64plus-rsp-hle/projects/unix

sudo make NEON=1 VFP_HARD=1 USE_GLES=1 all

sudo NEON=1 VFP_HARD=1 USE_GLES=1 make install

echo "------------------------------------------------------------"

echo "--- Building rsp-cxd4 ---"

echo "------------------------------------------------------------"

cd ../../../mupen64plus-rsp-cxd4/projects/unix

make NEON=1 VFP_HARD=1 USE_GLES=1 all

sudo NEON=1 VFP_HARD=1 USE_GLES=1 make install

echo "------------------------------------------------------------"

echo "--- Building rsp-z64 ---"

echo "------------------------------------------------------------"

cd ../../../mupen64plus-rsp-z64/projects/unix

make NEON=1 VFP_HARD=1 USE_GLES=1 all

sudo NEON=1 VFP_HARD=1 USE_GLES=1 make install

echo "------------------------------------------------------------"

echo "--- Building video-glide64mk2 ---"

echo "------------------------------------------------------------"

cd ../../../mupen64plus-video-glide64mk2/projects/unix

make NEON=1 VFP_HARD=1 USE_GLES=1 all

sudo NEON=1 VFP_HARD=1 USE_GLES=1 make install

echo "------------------------------------------------------------"

echo "--- Building video-arachnoid ---"

echo "------------------------------------------------------------"

cd ../../../mupen64plus-video-arachnoid/projects/unix

make NEON=1 VFP_HARD=1 USE_GLES=1 all

sudo NEON=1 VFP_HARD=1 USE_GLES=1 make install

echo "------------------------------------------------------------"

echo "--- Building video-rice ---"

echo "------------------------------------------------------------"

cd ../../../mupen64plus-video-rice/projects/unix

make NEON=1 VFP_HARD=1 USE_GLES=1 all

sudo NEON=1 VFP_HARD=1 USE_GLES=1 make install

echo "------------------------------------------------------------"

echo "--- Building video-z64 ---"

echo "------------------------------------------------------------"
cd ../../../mupen64plus-video-z64/projects/unix

make NEON=1 VFP_HARD=1 USE_GLES=1 all

sudo NEON=1 VFP_HARD=1 USE_GLES=1 make install
