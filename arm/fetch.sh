#!/bin/bash

set -eu -o pipefail
set -x

SELF_NAME="$( basename "${BASH_SOURCE[0]}" )"
SELF_DIR="$( dirname $( readlink -e "${BASH_SOURCE[0]}" ) )"
SELF_VERSION=$( echo "${SELF_NAME}" | sed 's/fetch\(.*\)\.sh/\1/' )

SHAS="${SELF_DIR}/shas${SELF_VERSION}.bash"
source "${SHAS}"

# first, set the repos to default
SWIFT_REPO="apple/swift"
LLVM_REPO="apple/swift-llvm"
CLANG_REPO="apple/swift-clang"
LLDB_REPO="apple/swift-lldb"
CMARK_REPO="apple/swift-cmark"
TESTS_REPO="apple/swift-integration-tests"
LLBUILD_REPO="apple/swift-llbuild"
PM_REPO="apple/swift-package-manager"
XCTEST_REPO="apple/swift-corelibs-xctest"
FOUNDATION_REPO="apple/swift-corelibs-foundation"

# then apply any repo overrides (if available)
REPOS="${SELF_DIR}/repos${SELF_VERSION}.bash"
if [ -e "${REPOS}" ]
then
    source "${REPOS}"
fi

source "${SELF_DIR}/vars.bash"

## dir structure

mkdir -p "${DOWNLOADS}"
mkdir -p "${SRC}"


## fetch swift

if [ ! -e "${SRC}/swift-${SWIFT_SHA}" ]
then

    if [ ! -e "${DOWNLOADS}/${SWIFT_SHA}.tar.gz" ]
    then
        cd "${DOWNLOADS}"
        wget "https://github.com/${SWIFT_REPO}/archive/${SWIFT_SHA}.tar.gz"
    fi

    cd "${SRC}"
    cat "${DOWNLOADS}/${SWIFT_SHA}.tar.gz" | gunzip | tar x
fi


## fetch llvm

if [ ! -e "${SRC}/swift-llvm-${LLVM_SHA}" ]
then

    if [ ! -e "${DOWNLOADS}/${LLVM_SHA}.tar.gz" ]
    then
        cd "${DOWNLOADS}"
        wget "https://github.com/${LLVM_REPO}/archive/${LLVM_SHA}.tar.gz"
    fi

    cd "${SRC}"
    cat "${DOWNLOADS}/${LLVM_SHA}.tar.gz" | gunzip | tar x
fi


## fetch clang

if [ ! -e "${SRC}/swift-clang-${CLANG_SHA}" ]
then

    if [ ! -e "${DOWNLOADS}/${CLANG_SHA}.tar.gz" ]
    then
        cd "${DOWNLOADS}"
        wget "https://github.com/${CLANG_REPO}/archive/${CLANG_SHA}.tar.gz"
    fi

    cd "${SRC}"
    cat "${DOWNLOADS}/${CLANG_SHA}.tar.gz" | gunzip | tar x
fi


## fetch lldb

if [ ! -e "${SRC}/swift-lldb-${LLDB_SHA}" ]
then

    if [ ! -e "${DOWNLOADS}/${LLDB_SHA}.tar.gz" ]
    then
        cd "${DOWNLOADS}"
        wget "https://github.com/${LLDB_REPO}/archive/${LLDB_SHA}.tar.gz"
    fi

    cd "${SRC}"
    cat "${DOWNLOADS}/${LLDB_SHA}.tar.gz" | gunzip | tar x
fi


## fetch cmark

if [ ! -e "${SRC}/swift-cmark-${CMARK_SHA}" ]
then

    if [ ! -e "${DOWNLOADS}/${CMARK_SHA}.tar.gz" ]
    then
        cd "${DOWNLOADS}"
        wget "https://github.com/${CMARK_REPO}/archive/${CMARK_SHA}.tar.gz"
    fi

    cd "${SRC}"
    cat "${DOWNLOADS}/${CMARK_SHA}.tar.gz" | gunzip | tar x
fi


## fetch swift-integration-tests

if [ ! -e "${SRC}/swift-integration-tests-${TESTS_SHA}" ]
then

    if [ ! -e "${DOWNLOADS}/${TESTS_SHA}.tar.gz" ]
    then
        cd "${DOWNLOADS}"
        wget "https://github.com/${TESTS_REPO}/archive/${TESTS_SHA}.tar.gz"
    fi

    cd "${SRC}"
    cat "${DOWNLOADS}/${TESTS_SHA}.tar.gz" | gunzip | tar x
fi


## fetch swift-llbuild

if [ ! -e "${SRC}/swift-llbuild-${LLBUILD_SHA}" ]
then

    if [ ! -e "${DOWNLOADS}/${LLBUILD_SHA}.tar.gz" ]
    then
        cd "${DOWNLOADS}"
        wget "https://github.com/${LLBUILD_REPO}/archive/${LLBUILD_SHA}.tar.gz"
    fi

    cd "${SRC}"
    cat "${DOWNLOADS}/${LLBUILD_SHA}.tar.gz" | gunzip | tar x
fi


## fetch swift-package-manager

if [ ! -e "${SRC}/swift-package-manager-${PM_SHA}" ]
then
    
    if [ ! -e "${DOWNLOADS}/${PM_SHA}.tar.gz" ]
    then
        cd "${DOWNLOADS}"
        wget "https://github.com/${PM_REPO}/archive/${PM_SHA}.tar.gz"
    fi

    cd "${SRC}"
    cat "${DOWNLOADS}/${PM_SHA}.tar.gz" | gunzip | tar x
fi


## fetch swift-corelibs-xctest

if [ ! -e "${SRC}/swift-corelibs-xctest-${XCTEST_SHA}" ]
then

    if [ ! -e "${DOWNLOADS}/${XCTEST_SHA}.tar.gz" ]
    then
        cd "${DOWNLOADS}"
        wget "https://github.com/${XCTEST_REPO}/archive/${XCTEST_SHA}.tar.gz"
    fi

    cd "${SRC}"
    cat "${DOWNLOADS}/${XCTEST_SHA}.tar.gz" | gunzip | tar x
fi


## fetch swift-corelibs-foundation

if [ ! -e "${SRC}/swift-corelibs-foundation-${FOUNDATION_SHA}" ]
then

    if [ ! -e "${DOWNLOADS}/${FOUNDATION_SHA}.tar.gz" ]
    then
        cd "${DOWNLOADS}"
        wget "https://github.com/${FOUNDATION_REPO}/archive/${FOUNDATION_SHA}.tar.gz"
    fi

    cd "${SRC}"
    cat "${DOWNLOADS}/${FOUNDATION_SHA}.tar.gz" | gunzip | tar x
fi

