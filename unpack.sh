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

cachedtgz="gcc-arm-none-eabi-4_9-2015q3-20150921-linux.tar.bz2"
destdir="gcc-arm-none-eabi-4_9-2015q3"
if [ ! -e "stage/${destdir}" ] ; then
    cat "cache/${cachedtgz}" | bunzip2 | tar x
    mv "${destdir}" "stage/${destdir}"
    cp -a cache/arm-linux-androideabi-ld.gold "stage/${destdir}/bin/ld.gold"
fi

