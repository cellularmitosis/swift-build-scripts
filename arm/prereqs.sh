#!/bin/bash

set -eu -o pipefail


## prereqs

if [ "$( lsb_release -c | awk '{print $2}' )" = "jessie" ]
then
    echo fixme
fi

if [ "$( lsb_release -c | awk '{print $2}' )" = "trusty" ]
then
    sudo apt-get install \
        git \
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
        pkg-config

    sudo apt-get install clang-3.6
    sudo update-alternatives --install /usr/bin/clang clang /usr/bin/clang-3.6 100
    sudo update-alternatives --install /usr/bin/clang++ clang++ /usr/bin/clang++-3.6 100
fi

if [ "$( lsb_release -c | awk '{print $2}' )" = "wily" ]
then
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
fi
