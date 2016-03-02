#!/usr/bin/env bash

set -eu -o pipefail
set -x

source versions.bash

mkdir -p stage

# this loop has been unrolled to make it easier to point individual repos to forks other than apple's

project="cmark"
vendor="apple"
tgz="${release}.tar.gz"
cachedtgz="${project}.${tgz}"
cachedpath="${HOME}/Downloads/${cachedtgz}"
destdir="stage/${project}"
if [ ! -e "${destdir}" ] ; then
    cat "${cachedpath}" | gunzip | tar x
    mv "swift-${project}-${release}" "${destdir}"
fi

project="llvm"
vendor="apple"
tgz="${release}.tar.gz"
cachedtgz="${project}.${tgz}"
cachedpath="${HOME}/Downloads/${cachedtgz}"
destdir="stage/${project}"
if [ ! -e "${destdir}" ] ; then
    cat "${cachedpath}" | gunzip | tar x
    mv "swift-${project}-${release}" "${destdir}"
fi

project="lldb"
vendor="apple"
tgz="${release}.tar.gz"
cachedtgz="${project}.${tgz}"
cachedpath="${HOME}/Downloads/${cachedtgz}"
destdir="stage/${project}"
if [ ! -e "${destdir}" ] ; then
    cat "${cachedpath}" | gunzip | tar x
    mv "swift-${project}-${release}" "${destdir}"
fi

project="llbuild"
vendor="apple"
tgz="${release}.tar.gz"
cachedtgz="${project}.${tgz}"
cachedpath="${HOME}/Downloads/${cachedtgz}"
destdir="stage/${project}"
if [ ! -e "${destdir}" ] ; then
    cat "${cachedpath}" | gunzip | tar x
    mv "swift-${project}-${release}" "${destdir}"
fi

project="clang"
vendor="apple"
tgz="${release}.tar.gz"
cachedtgz="${project}.${tgz}"
cachedpath="${HOME}/Downloads/${cachedtgz}"
destdir="stage/${project}"
if [ ! -e "${destdir}" ] ; then
    cat "${cachedpath}" | gunzip | tar x
    mv "swift-${project}-${release}" "${destdir}"
fi

project="swift"
vendor="apple"
tgz="${release}.tar.gz"
cachedtgz="${project}.${tgz}"
cachedpath="${HOME}/Downloads/${cachedtgz}"
destdir="stage/${project}"
if [ ! -e "${destdir}" ] ; then
    cat "${cachedpath}" | gunzip | tar x
    mv "${project}-${release}" "${destdir}"
fi

project="swift-corelibs-xctest"
vendor="apple"
tgz="${release}.tar.gz"
cachedtgz="${project}.${tgz}"
cachedpath="${HOME}/Downloads/${cachedtgz}"
destdir="stage/${project}"
if [ ! -e "${destdir}" ] ; then
    cat "${cachedpath}" | gunzip | tar x
    mv "${project}-${release}" "${destdir}"
fi

project="swift-corelibs-foundation"
vendor="apple"
tgz="${release}.tar.gz"
cachedtgz="${project}.${tgz}"
cachedpath="${HOME}/Downloads/${cachedtgz}"
destdir="stage/${project}"
if [ ! -e "${destdir}" ] ; then
    cat "${cachedpath}" | gunzip | tar x
    mv "${project}-${release}" "${destdir}"
fi

project="swift-integration-tests"
vendor="apple"
tgz="${release}.tar.gz"
cachedtgz="${project}.${tgz}"
cachedpath="${HOME}/Downloads/${cachedtgz}"
destdir="stage/${project}"
if [ ! -e "${destdir}" ] ; then
    cat "${cachedpath}" | gunzip | tar x
    mv "${project}-${release}" "${destdir}"
fi

project="swift-package-manager"
vendor="apple"
tgz="${release}.tar.gz"
cachedtgz="${project}.${tgz}"
cachedpath="${HOME}/Downloads/${cachedtgz}"
destdir="stage/swiftpm"
if [ ! -e "${destdir}" ] ; then
    cat "${cachedpath}" | gunzip | tar x
    mv "${project}-${release}" "${destdir}"
fi

cachedtgz="gcc-arm-none-eabi-4_9-2015q3-20150921-linux.tar.bz2"
cachedpath="${HOME}/Downloads/${cachedtgz}"
destdir="gcc-arm-none-eabi-4_9-2015q3"
if [ ! -e "stage/${destdir}" ] ; then
    cat "${cachedpath}" | bunzip2 | tar x
    mv "${destdir}" "stage/${destdir}"
    cp -a cache/arm-linux-androideabi-ld.gold "stage/${destdir}/bin/arm-none-eabi-ld.gold"
fi
