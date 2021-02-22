!/bin/sh

pathToScript=$(dirname "$0")

cd dirname
mkdir build && cd build
cmake ..

cd ../m6502Emu
mkdir tmp && cd tmp
cmake -DCMAKE_ESXPORT_COMPILE_COMMANDS=1 ..
cp compiler_commands.json ../compiler_commands.json
cd ..
rm -rf tmp
