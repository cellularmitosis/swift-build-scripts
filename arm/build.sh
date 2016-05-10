#!/bin/bash

set -eu -o pipefail
set -x

SELF_NAME="$( basename "${BASH_SOURCE[0]}" )"
SELF_DIR="$( dirname $( readlink -e "${BASH_SOURCE[0]}" ) )"
SELF_VERSION=$( echo "${SELF_NAME}" | sed 's/build\(.*\)\.sh/\1/' )

SHAS="${SELF_DIR}/shas${SELF_VERSION}.bash"
source "${SHAS}"

source "${SELF_DIR}/vars.bash"

export SWIFT_SOURCE_ROOT="$( pwd )/swift_src"
export SWIFT_BUILD_ROOT="$( pwd )/swift_build"

mkdir -p "${SWIFT_SOURCE_ROOT}"
mkdir -p "${SWIFT_BUILD_ROOT}"

function onexit
{
    echo ""
    echo "Results are in ${SWIFT_BUILD_ROOT}"
}

trap onexit EXIT

cd "${SWIFT_SOURCE_ROOT}"

rm -f swift llvm clang lldb cmark swift-integration-tests llbuild swiftpm swift-corelibs-xctest swift-corelibs-foundation

ln -s "${SRC}/swift-${SWIFT_SHA}" swift
ln -s "${SRC}/swift-llvm-${LLVM_SHA}" llvm
ln -s "${SRC}/swift-clang-${CLANG_SHA}" clang
ln -s "${SRC}/swift-lldb-${LLDB_SHA}" lldb
ln -s "${SRC}/swift-cmark-${CMARK_SHA}" cmark
ln -s "${SRC}/swift-integration-tests-${TESTS_SHA}" swift-integration-tests
ln -s "${SRC}/swift-llbuild-${LLBUILD_SHA}" llbuild
ln -s "${SRC}/swift-package-manager-${PM_SHA}" swiftpm
ln -s "${SRC}/swift-corelibs-xctest-${XCTEST_SHA}" swift-corelibs-xctest
ln -s "${SRC}/swift-corelibs-foundation-${FOUNDATION_SHA}" swift-corelibs-foundation

cd "${SWIFT_BUILD_ROOT}"

nice swift/utils/build-script -R -j 1 -- \
--install-swift \
--install-foundation \
--install-prefix=/usr \
--foundation \
--install-destdir="$( pwd )/swift_install" \
'--swift-install-components=autolink-driver;compiler;clang-builtin-headers;stdlib;sdk-overlay;license' \
--reconfigure
