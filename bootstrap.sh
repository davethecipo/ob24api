#!/usr/bin/env bash

# update / upgrade
sudo apt-get update
sudo apt-get -y upgrade

# build dependencies
sudo apt-get install -y git cmake build-essential pkg-config

# installation prefix folder for local development
mkdir ~/opt

# install latest stable openbabel
git clone git://github.com/openbabel/openbabel.git
cd openbabel
git checkout openbabel-2-4-1
mkdir build
cd build
cmake -DCMAKE_INSTALL_PREFIX=~/opt -DCMAKE_BUILD_TYPE=Debug ..
make -j4
make install
sudo ldconfig


# install the minimal working example
cd ../..
git clone https://github.com/davethecipo/ob24api
cd ob24api
mkdir build
cd build
LC_ALL=C CMAKE_PREFIX_PATH=~/opt cmake ..
LC_ALL=C make