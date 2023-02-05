#!/bin/sh

printf "Entrypoint Script esecuted"
printf "Done"
printf '\n'

mkdir build && cd build
conan install ..
cmake .. -DCMAKE_BUILD_TYPE=Release
cmake --build .
bin/sleep