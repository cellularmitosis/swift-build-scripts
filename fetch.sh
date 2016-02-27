#!/usr/bin/env bash

set -eu -o pipefail
set -x

vendor="apple"
source versions.bash

mkdir -p cache

for project in cmark llvm lldb llbuild clang
do
    tgz="${release}.tar.gz"
    tgzurl="https://github.com/${vendor}/swift-${project}/archive/${tgz}"
    cachedtgz="${project}.${tgz}"

    if [ ! -e "cache/${cachedtgz}" ]
    then
        cd cache
        wget -O "${cachedtgz}" "${tgzurl}"
        cd -
    fi

done

for project in swift swift-corelibs-xctest swift-corelibs-foundation
do
    tgz="${release}.tar.gz"
    tgzurl="https://github.com/${vendor}/${project}/archive/${tgz}"
    cachedtgz="${project}.${tgz}"

    if [ ! -e "cache/${cachedtgz}" ]
    then
        cd cache
        wget -O "${cachedtgz}" "${tgzurl}"
        cd -
    fi

done
