#!/bin/sh

pathToScript=$(dirname "$0")

cd $pathToScript

cd ../m6502Emu
rm -rf build
rm -rf compile_commands.json
mkdir build && cd build
cmake -DCMAKE_EXPORT_COMPILE_COMMANDS=1 ..
ln -s compile_commands.json ../compile_commands.json
