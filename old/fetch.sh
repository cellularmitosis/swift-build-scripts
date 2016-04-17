#!/usr/bin/env bash

set -eu -o pipefail
set -x

source versions.bash

mkdir -p ~/Downloads

# this loop has been unrolled to make it easier to point individual repos to forks other than apple's

project="cmark"
vendor="apple"
gitname="swift-${project}"
tgz="${release}.tar.gz"
tgzurl="https://github.com/${vendor}/${gitname}/archive/${tgz}"
cachedtgz="${project}.${tgz}"
cachedpath="${HOME}/Downloads/${cachedtgz}"
if [ ! -e "${cachedpath}" ] ; then wget -O "${cachedpath}" "${tgzurl}" ; fi

project="llvm"
vendor="apple"
gitname="swift-${project}"
tgz="${release}.tar.gz"
tgzurl="https://github.com/${vendor}/${gitname}/archive/${tgz}"
cachedtgz="${project}.${tgz}"
cachedpath="${HOME}/Downloads/${cachedtgz}"
if [ ! -e "${cachedpath}" ] ; then wget -O "${cachedpath}" "${tgzurl}" ; fi

project="lldb"
vendor="apple"
gitname="swift-${project}"
tgz="${release}.tar.gz"
tgzurl="https://github.com/${vendor}/${gitname}/archive/${tgz}"
cachedtgz="${project}.${tgz}"
cachedpath="${HOME}/Downloads/${cachedtgz}"
if [ ! -e "${cachedpath}" ] ; then wget -O "${cachedpath}" "${tgzurl}" ; fi

project="llbuild"
vendor="apple"
gitname="swift-${project}"
tgz="${release}.tar.gz"
tgzurl="https://github.com/${vendor}/${gitname}/archive/${tgz}"
cachedtgz="${project}.${tgz}"
cachedpath="${HOME}/Downloads/${cachedtgz}"
if [ ! -e "${cachedpath}" ] ; then wget -O "${cachedpath}" "${tgzurl}" ; fi

project="clang"
vendor="apple"
gitname="swift-${project}"
tgz="${release}.tar.gz"
tgzurl="https://github.com/${vendor}/${gitname}/archive/${tgz}"
cachedtgz="${project}.${tgz}"
cachedpath="${HOME}/Downloads/${cachedtgz}"
if [ ! -e "${cachedpath}" ] ; then wget -O "${cachedpath}" "${tgzurl}" ; fi

project="swift"
vendor="apple"
gitname="${project}"
tgz="${release}.tar.gz"
tgzurl="https://github.com/${vendor}/${gitname}/archive/${tgz}"
cachedtgz="${project}.${tgz}"
cachedpath="${HOME}/Downloads/${cachedtgz}"
if [ ! -e "${cachedpath}" ] ; then wget -O "${cachedpath}" "${tgzurl}" ; fi

project="swift-corelibs-xctest"
vendor="apple"
gitname="${project}"
tgz="${release}.tar.gz"
tgzurl="https://github.com/${vendor}/${gitname}/archive/${tgz}"
cachedtgz="${project}.${tgz}"
cachedpath="${HOME}/Downloads/${cachedtgz}"
if [ ! -e "${cachedpath}" ] ; then wget -O "${cachedpath}" "${tgzurl}" ; fi

project="swift-corelibs-foundation"
vendor="apple"
gitname="${project}"
tgz="${release}.tar.gz"
tgzurl="https://github.com/${vendor}/${gitname}/archive/${tgz}"
cachedtgz="${project}.${tgz}"
cachedpath="${HOME}/Downloads/${cachedtgz}"
if [ ! -e "${cachedpath}" ] ; then wget -O "${cachedpath}" "${tgzurl}" ; fi

project="swift-integration-tests"
vendor="apple"
gitname="${project}"
tgz="${release}.tar.gz"
tgzurl="https://github.com/${vendor}/${gitname}/archive/${tgz}"
cachedtgz="${project}.${tgz}"
cachedpath="${HOME}/Downloads/${cachedtgz}"
if [ ! -e "${cachedpath}" ] ; then wget -O "${cachedpath}" "${tgzurl}" ; fi

project="swift-package-manager"
vendor="apple"
gitname="${project}"
tgz="${release}.tar.gz"
tgzurl="https://github.com/${vendor}/${gitname}/archive/${tgz}"
cachedtgz="${project}.${tgz}"
cachedpath="${HOME}/Downloads/${cachedtgz}"
if [ ! -e "${cachedpath}" ] ; then wget -O "${cachedpath}" "${tgzurl}" ; fi

cachedtgz="gcc-arm-none-eabi-4_9-2015q3-20150921-linux.tar.bz2"
tgzurl="https://launchpad.net/gcc-arm-embedded/4.9/4.9-2015-q3-update/+download/${cachedtgz}"
cachedpath="${HOME}/Downloads/${cachedtgz}"
if [ ! -e "${cachedpath}" ] ; then wget -O "${cachedpath}" "${tgzurl}" ; fi

# cd cache
# wget http://dl.google.com/android/ndk/android-ndk-r10e-linux-x86_64.bin
