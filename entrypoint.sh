cd sleep
mkdir build && cd build
conan install ..
cmake .. -DCMAKE_BUILD_TYPE=Release
cmake --build .
bin/sleep

printf 'Insidebuild\n'
printf 'build\n'
printf 'Finished\n'
