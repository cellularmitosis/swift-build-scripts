#!/bin/bash

set -eu -o pipefail

source vars.bash
source shas.bash


## dir structure

mkdir -p "${DOWNLOADS}"
mkdir -p "${SRC}"


## fetch swift

if [ ! -e "${SRC}/swift-${SWIFT_SHA}" ]
then

    if [ ! -e "${DOWNLOADS}/${SWIFT_SHA}.tar.gz" ]
    then
        cd "${DOWNLOADS}"
        wget "https://github.com/apple/swift/archive/${SWIFT_SHA}.tar.gz"
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
        wget "https://github.com/apple/swift-llvm/archive/${LLVM_SHA}.tar.gz"
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
        wget "https://github.com/apple/swift-clang/archive/${CLANG_SHA}.tar.gz"
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
        wget "https://github.com/apple/swift-lldb/archive/${LLDB_SHA}.tar.gz"
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
        wget "https://github.com/apple/swift-cmark/archive/${CMARK_SHA}.tar.gz"
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
        wget "https://github.com/apple/swift-integration-tests/archive/${TESTS_SHA}.tar.gz"
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
        wget "https://github.com/apple/swift-llbuild/archive/${LLBUILD_SHA}.tar.gz"
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
        wget "https://github.com/apple/swift-package-manager/archive/${PM_SHA}.tar.gz"
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
        wget "https://github.com/apple/swift-corelibs-xctest/archive/${XCTEST_SHA}.tar.gz"
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
        wget "https://github.com/apple/swift-corelibs-foundation/archive/${FOUNDATION_SHA}.tar.gz"
    fi

    cd "${SRC}"
    cat "${DOWNLOADS}/${FOUNDATION_SHA}.tar.gz" | gunzip | tar x
fi

