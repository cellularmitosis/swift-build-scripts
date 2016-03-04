#!/usr/bin/env bash

set -eu -o pipefail
set -x

sudo apt-get install \
    git \
    clang-3.6 \
    realpath \
    cmake \
    ninja-build \
    python \
    uuid-dev \
    libicu-dev \
    icu-devtools \
    libbsd-dev \
    libedit-dev \
    libxml2-dev \
    libsqlite3-dev \
    swig \
    libpython-dev \
    libncurses5-dev \
    pkg-config \
    gcc-arm-linux-gnueabi
