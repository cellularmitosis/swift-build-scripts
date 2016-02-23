#!/usr/bin/env bash

set -eu -o pipefail
set -x

sudo apt-get install \
    git \
    cmake \
    ninja-build \
    clang \
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
    pkg-config
