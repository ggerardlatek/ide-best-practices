FROM docker.io/databricksruntime/standard:12.2-LTS
RUN apt-get update && apt-get install -y \
        git libpq-dev python3-dev pkg-config libcairo2-dev \
        build-essential unixodbc-dev libssl-dev \
        libgirepository1.0-dev libdbus-1-dev
WORKDIR /tmp
RUN wget https://github.com/Kitware/CMake/releases/download/v3.20.0/cmake-3.20.0.tar.gz && \
    tar -zxvf cmake-3.20.0.tar.gz && rm cmake-3.20.0.tar.gz
RUN cd /tmp/cmake-3.20.0 && ./bootstrap && make && make install
RUN rm -fr cmake-3.20.0

ARG USERNAME=ubuntu
ARG USER_UID=1000
ARG USER_GID=$USER_UID

# ********************************************************
# * Anything else you want to do like clean up goes here *
# ********************************************************

# [Optional] Set the default user. Omit if you want to keep the default as root.
USER $USERNAME