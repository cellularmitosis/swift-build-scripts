#!/usr/bin/env bash

set -eu -o pipefail
set -x

source versions.bash

mkdir -p cache

project="cmark"
vendor="apple"
gitname="swift-${project}"
tgz="${release}.tar.gz"
tgzurl="https://github.com/${vendor}/${gitname}/archive/${tgz}"
cachedtgz="${project}.${tgz}"
if [ ! -e "cache/${cachedtgz}" ] ; then wget -O "cache/${cachedtgz}" "${tgzurl}" ; fi

project="llvm"
vendor="apple"
gitname="swift-${project}"
tgz="${release}.tar.gz"
tgzurl="https://github.com/${vendor}/${gitname}/archive/${tgz}"
cachedtgz="${project}.${tgz}"
if [ ! -e "cache/${cachedtgz}" ] ; then wget -O "cache/${cachedtgz}" "${tgzurl}" ; fi

project="lldb"
vendor="apple"
gitname="swift-${project}"
tgz="${release}.tar.gz"
tgzurl="https://github.com/${vendor}/${gitname}/archive/${tgz}"
cachedtgz="${project}.${tgz}"
if [ ! -e "cache/${cachedtgz}" ] ; then wget -O "cache/${cachedtgz}" "${tgzurl}" ; fi

project="llbuild"
vendor="apple"
gitname="swift-${project}"
tgz="${release}.tar.gz"
tgzurl="https://github.com/${vendor}/${gitname}/archive/${tgz}"
cachedtgz="${project}.${tgz}"
if [ ! -e "cache/${cachedtgz}" ] ; then wget -O "cache/${cachedtgz}" "${tgzurl}" ; fi

project="clang"
vendor="apple"
gitname="swift-${project}"
tgz="${release}.tar.gz"
tgzurl="https://github.com/${vendor}/${gitname}/archive/${tgz}"
cachedtgz="${project}.${tgz}"
if [ ! -e "cache/${cachedtgz}" ] ; then wget -O "cache/${cachedtgz}" "${tgzurl}" ; fi

project="swift"
vendor="apple"
gitname="${project}"
tgz="${release}.tar.gz"
tgzurl="https://github.com/${vendor}/${gitname}/archive/${tgz}"
cachedtgz="${project}.${tgz}"
if [ ! -e "cache/${cachedtgz}" ] ; then wget -O "cache/${cachedtgz}" "${tgzurl}" ; fi

project="swift-corelibs-xctest"
vendor="apple"
gitname="${project}"
tgz="${release}.tar.gz"
tgzurl="https://github.com/${vendor}/${gitname}/archive/${tgz}"
cachedtgz="${project}.${tgz}"
if [ ! -e "cache/${cachedtgz}" ] ; then wget -O "cache/${cachedtgz}" "${tgzurl}" ; fi

project="swift-corelibs-foundation"
vendor="apple"
gitname="${project}"
tgz="${release}.tar.gz"
tgzurl="https://github.com/${vendor}/${gitname}/archive/${tgz}"
cachedtgz="${project}.${tgz}"
if [ ! -e "cache/${cachedtgz}" ] ; then wget -O "cache/${cachedtgz}" "${tgzurl}" ; fi

project="swift-package-manager"
vendor="apple"
gitname="${project}"
tgz="${release}.tar.gz"
tgzurl="https://github.com/${vendor}/${gitname}/archive/${tgz}"
cachedtgz="${project}.${tgz}"
if [ ! -e "cache/${cachedtgz}" ] ; then wget -O "cache/${cachedtgz}" "${tgzurl}" ; fi

