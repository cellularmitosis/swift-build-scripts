#!/usr/bin/env bash

set -eu -o pipefail
set -x

source versions.bash

project="cmark"
vendor="apple"
tgz="${release}.tar.gz"
cachedtgz="${project}.${tgz}"
if [ ! -e "${project}" ] ; then
    cat "cache/${cachedtgz}" | gunzip | tar x
    mv "swift-${project}-${release}" "${project}"
fi

project="llvm"
vendor="apple"
tgz="${release}.tar.gz"
cachedtgz="${project}.${tgz}"
if [ ! -e "${project}" ] ; then
    cat "cache/${cachedtgz}" | gunzip | tar x
    mv "swift-${project}-${release}" "${project}"
fi

project="lldb"
vendor="apple"
tgz="${release}.tar.gz"
cachedtgz="${project}.${tgz}"
if [ ! -e "${project}" ] ; then
    cat "cache/${cachedtgz}" | gunzip | tar x
    mv "swift-${project}-${release}" "${project}"
fi

project="llbuild"
vendor="apple"
tgz="${release}.tar.gz"
cachedtgz="${project}.${tgz}"
if [ ! -e "${project}" ] ; then
    cat "cache/${cachedtgz}" | gunzip | tar x
    mv "swift-${project}-${release}" "${project}"
fi

project="clang"
vendor="apple"
tgz="${release}.tar.gz"
cachedtgz="${project}.${tgz}"
if [ ! -e "${project}" ] ; then
    cat "cache/${cachedtgz}" | gunzip | tar x
    mv "swift-${project}-${release}" "${project}"
fi

project="swift"
vendor="apple"
tgz="${release}.tar.gz"
cachedtgz="${project}.${tgz}"
if [ ! -e "${project}" ] ; then
    cat "cache/${cachedtgz}" | gunzip | tar x
    mv "${project}-${release}" "${project}"
fi

project="swift-corelibs-xctest"
vendor="apple"
tgz="${release}.tar.gz"
cachedtgz="${project}.${tgz}"
if [ ! -e "${project}" ] ; then
    cat "cache/${cachedtgz}" | gunzip | tar x
    mv "${project}-${release}" "${project}"
fi

project="swift-corelibs-foundation"
vendor="apple"
tgz="${release}.tar.gz"
cachedtgz="${project}.${tgz}"
if [ ! -e "${project}" ] ; then
    cat "cache/${cachedtgz}" | gunzip | tar x
    mv "${project}-${release}" "${project}"
fi

project="swift-package-manager"
vendor="apple"
tgz="${release}.tar.gz"
cachedtgz="${project}.${tgz}"
destname="swiftpm"
if [ ! -e "${destname}" ] ; then
    cat "cache/${cachedtgz}" | gunzip | tar x
    mv "${project}-${release}" "${destname}"
fi

