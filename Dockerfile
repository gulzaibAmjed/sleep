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

# Copies your code file from your action repository to the filesystem path `/` of the container
COPY entrypoint.sh /entrypoint.sh

RUN chmod +x entrypoint.sh

# Executes `entrypoint.sh` when the Docker container starts up
ENTRYPOINT ["/entrypoint.sh"]