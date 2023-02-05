FROM conanio/gcc10:1.56.0

RUN sudo apt-get -qq update \
    && sudo apt-get -qq install -y --no-install-recommends \
       vim \
       nano \
       less \
       g++-arm-linux-gnueabihf \
       cmake

RUN git clone https://github.com/AnasJavaidDevops/sleep
RUN conan profile new default --detect --force

RUN mkdir build && cd build
RUN conan install ..
RUN cmake .. -DCMAKE_BUILD_TYPE=Release
RUN cmake --build .
RUN bin/sleep
