#!/bin/bash

cd ServiceWrapper
rm -rf build
mkdir build
cd build
cmake ..
make

cd ../../Common
rm -rf build
mkdir build
cd build
~/Qt/6.5.1/gcc_64/bin/qmake6 ..
make

cd ../../Home
rm -rf build
mkdir build
cd build
~/Qt/6.5.1/gcc_64/bin/qmake6 ..
make
LD_LIBRARY_PATH=$LD_LIBRARY_PATH:~/projects/Telephone-OS/Executable/Libraries/
export LD_LIBRARY_PATH
./Home
