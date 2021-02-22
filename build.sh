#!/bin/sh

pathToScript=$(dirname "$0")

cd $pathToScript
rm -rf build
mkdir build && cd build
cmake ..
make
