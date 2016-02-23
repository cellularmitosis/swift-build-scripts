#!/usr/bin/env bash

set -eu -o pipefail
set -x

vendor="apple"
release="swift-DEVELOPMENT-SNAPSHOT-2016-02-08-a"

for project in cmark llvm lldb llbuild clang 
do
    tgz="${release}.tar.gz"
    cachedtgz="${project}.${tgz}"

    if [ ! -e "${project}" ]
    then
        cat "cache/${cachedtgz}" | gunzip | tar x
        mv "swift-${project}-${release}" "${project}"
    fi

done

for project in swift swift-corelibs-xctest swift-corelibs-foundation
do
    tgz="${release}.tar.gz"
    cachedtgz="${project}.${tgz}"

    if [ ! -e "${project}" ]
    then
        cat "cache/${cachedtgz}" | gunzip | tar x
        mv "${project}-${release}" "${project}"
    fi

done
