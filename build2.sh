#!/usr/bin/env bash

set -eu -o pipefail
set -x

source versions.bash

mkdir -p install products

cd stage

sysroot="`pwd`/sysroots/sysroot.armhf.ubuntu.trusty"
toolchain="`pwd`/stage/gcc-arm-none-eabi-4_9-2015q3/bin"

./swift/utils/build-script -R \
    --cross-compile-targets linux-armv7 \
    -- \
    --cross-compile-sysroot="${sysroot}" \
    --cross-compile-toolchain-bin="${toolchain}"
