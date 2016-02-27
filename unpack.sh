#!/usr/bin/env bash

set -eu -o pipefail
set -x

source versions.bash

mkdir -p stage

project="cmark"
vendor="apple"
tgz="${release}.tar.gz"
cachedtgz="${project}.${tgz}"
destdir="stage/${project}"
if [ ! -e "${destdir}" ] ; then
    cat "cache/${cachedtgz}" | gunzip | tar x
    mv "swift-${project}-${release}" "${destdir}"
fi

project="llvm"
vendor="apple"
tgz="${release}.tar.gz"
cachedtgz="${project}.${tgz}"
destdir="stage/${project}"
if [ ! -e "${destdir}" ] ; then
    cat "cache/${cachedtgz}" | gunzip | tar x
    mv "swift-${project}-${release}" "${destdir}"
fi

project="lldb"
vendor="apple"
tgz="${release}.tar.gz"
cachedtgz="${project}.${tgz}"
destdir="stage/${project}"
if [ ! -e "${destdir}" ] ; then
    cat "cache/${cachedtgz}" | gunzip | tar x
    mv "swift-${project}-${release}" "${destdir}"
fi

project="llbuild"
vendor="apple"
tgz="${release}.tar.gz"
cachedtgz="${project}.${tgz}"
destdir="stage/${project}"
if [ ! -e "${destdir}" ] ; then
    cat "cache/${cachedtgz}" | gunzip | tar x
    mv "swift-${project}-${release}" "${destdir}"
fi

project="clang"
vendor="apple"
tgz="${release}.tar.gz"
cachedtgz="${project}.${tgz}"
destdir="stage/${project}"
if [ ! -e "${destdir}" ] ; then
    cat "cache/${cachedtgz}" | gunzip | tar x
    mv "swift-${project}-${release}" "${destdir}"
fi

project="swift"
vendor="apple"
tgz="${release}.tar.gz"
cachedtgz="${project}.${tgz}"
destdir="stage/${project}"
if [ ! -e "${destdir}" ] ; then
    cat "cache/${cachedtgz}" | gunzip | tar x
    mv "${project}-${release}" "${destdir}"
fi

project="swift-corelibs-xctest"
vendor="apple"
tgz="${release}.tar.gz"
cachedtgz="${project}.${tgz}"
destdir="stage/${project}"
if [ ! -e "${destdir}" ] ; then
    cat "cache/${cachedtgz}" | gunzip | tar x
    mv "${project}-${release}" "${destdir}"
fi

project="swift-corelibs-foundation"
vendor="apple"
tgz="${release}.tar.gz"
cachedtgz="${project}.${tgz}"
destdir="stage/${project}"
if [ ! -e "${destdir}" ] ; then
    cat "cache/${cachedtgz}" | gunzip | tar x
    mv "${project}-${release}" "${destdir}"
fi

project="swift-package-manager"
vendor="apple"
tgz="${release}.tar.gz"
cachedtgz="${project}.${tgz}"
destdir="stage/swiftpm"
if [ ! -e "${destdir}" ] ; then
    cat "cache/${cachedtgz}" | gunzip | tar x
    mv "${project}-${release}" "${destdir}"
fi

