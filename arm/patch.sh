#!/bin/bash

set -eu -o pipefail
set -x

SELF_NAME="$( basename "${BASH_SOURCE[0]}" )"
SELF_DIR="$( dirname $( readlink -e "${BASH_SOURCE[0]}" ) )"
SELF_VERSION=$( echo "${SELF_NAME}" | sed 's/patch\(.*\)\.sh/\1/' )

SHAS="${SELF_DIR}/shas${SELF_VERSION}.bash"
source "${SHAS}"

source "${SELF_DIR}/vars.bash"

# thanks to http://unix.stackexchange.com/a/77737

if [ -e "${SELF_DIR}/patches/swift-${SWIFT_SHA}" ]
then
    if cat patches/swift-${SWIFT_SHA}/*.patch | patch -N --dry-run --silent -p1 -d "${SRC}/swift-${SWIFT_SHA}" 2>/dev/null
    then
        cat patches/swift-${SWIFT_SHA}/*.patch | patch -p1 -d "${SRC}/swift-${SWIFT_SHA}"
    fi
fi

if [ -e "${SELF_DIR}/patches/swift-llvm-${LLVM_SHA}" ]
then
    if cat patches/swift-llvm-${LLVM_SHA}/*.patch | patch -N --dry-run --silent -p1 -d "${SRC}/swift-llvm-${LLVM_SHA}" 2>/dev/null
    then
        cat patches/swift-llvm-${LLVM_SHA}/*.patch | patch -p1 -d "${SRC}/swift-llvm-${LLVM_SHA}"
    fi
fi

if [ -e "${SELF_DIR}/patches/swift-clang-${CLANG_SHA}" ]
then
    if cat patches/swift-clang-${CLANG_SHA}/*.patch | patch -N --dry-run --silent -p1 -d "${SRC}/swift-clang-${CLANG_SHA}" 2>/dev/null
    then
        cat patches/swift-clang-${CLANG_SHA}/*.patch | patch -p1 -d "${SRC}/swift-clang-${CLANG_SHA}"
    fi
fi

if [ -e "${SELF_DIR}/patches/swift-lldb-${LLDB_SHA}" ]
then
    if cat patches/swift-lldb-${LLDB_SHA}/*.patch | patch -N --dry-run --silent -p1 -d "${SRC}/swift-lldb-${LLDB_SHA}" 2>/dev/null
    then
        cat patches/swift-lldb-${LLDB_SHA}/*.patch | patch -p1 -d "${SRC}/swift-lldb-${LLDB_SHA}"
    fi
fi

if [ -e "${SELF_DIR}/patches/swift-cmark-${CMARK_SHA}" ]
then
    if cat patches/swift-cmark-${CMARK_SHA}/*.patch | patch -N --dry-run --silent -p1 -d "${SRC}/swift-cmark-${CMARK_SHA}" 2>/dev/null
    then
        cat patches/swift-cmark-${CMARK_SHA}/*.patch | patch -p1 -d "${SRC}/swift-cmark-${CMARK_SHA}"
    fi
fi

if [ -e "${SELF_DIR}/patches/swift-integration-tests-${TESTS_SHA}" ]
then
    if cat patches/swift-integration-tests-${TESTS_SHA}/*.patch | patch -N --dry-run --silent -p1 -d "${SRC}/swift-integration-tests-${TESTS_SHA}" 2>/dev/null
    then
        cat patches/swift-integration-tests-${TESTS_SHA}/*.patch | patch -p1 -d "${SRC}/swift-integration-tests-${TESTS_SHA}"
    fi
fi

if [ -e "${SELF_DIR}/patches/swift-llbuild-${LLBUILD_SHA}" ]
then
    if cat patches/swift-llbuild-${LLBUILD_SHA}/*.patch | patch -N --dry-run --silent -p1 -d "${SRC}/swift-llbuild-${LLBUILD_SHA}" 2>/dev/null
    then
        cat patches/swift-llbuild-${LLBUILD_SHA}/*.patch | patch -p1 -d "${SRC}/swift-llbuild-${LLBUILD_SHA}"
    fi
fi

if [ -e "${SELF_DIR}/patches/swift-package-manager-${PM_SHA}" ]
then
    if cat patches/swift-package-manager-${PM_SHA}/*.patch | patch -N --dry-run --silent -p1 -d "${SRC}/swift-package-manager-${PM_SHA}" 2>/dev/null
    then
        cat patches/swift-package-manager-${PM_SHA}/*.patch | patch -p1 -d "${SRC}/swift-package-manager-${PM_SHA}"
    fi
fi

if [ -e "${SELF_DIR}/patches/swift-corelibs-xctest-${XCTEST_SHA}" ]
then
    if cat patches/swift-corelibs-xctest-${XCTEST_SHA}/*.patch | patch -N --dry-run --silent -p1 -d "${SRC}/swift-corelibs-xctest-${XCTEST_SHA}" 2>/dev/null
    then
        cat patches/swift-corelibs-xctest-${XCTEST_SHA}/*.patch | patch -p1 -d "${SRC}/swift-corelibs-xctest-${XCTEST_SHA}"
    fi
fi

if [ -e "${SELF_DIR}/patches/swift-corelibs-foundation-${FOUNDATION_SHA}" ]
then
    if cat patches/swift-corelibs-foundation-${FOUNDATION_SHA}/*.patch | patch -N --dry-run --silent -p1 -d "${SRC}/swift-corelibs-foundation-${FOUNDATION_SHA}" 2>/dev/null
    then
        cat patches/swift-corelibs-foundation-${FOUNDATION_SHA}/*.patch | patch -p1 -d "${SRC}/swift-corelibs-foundation-${FOUNDATION_SHA}"
    fi
fi

