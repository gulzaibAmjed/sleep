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

RUN cd sleep
RUN ./entrypoint.sh