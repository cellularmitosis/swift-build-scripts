#!/usr/bin/env bash

set -eu -o pipefail
set -x

source versions.bash

mkdir -p install products

sysroot="`pwd`/sysroots/sysroot.armhf.ubuntu.trusty"
toolchain="`pwd`/stage/gcc-arm-none-eabi-4_9-2015q3/bin"

cd stage

./swift/utils/build-script -R \
    --cross-compile-stdlib-targets linux-armv7 \
    -- \
    --reconfigure \
    --cross-compile-sysroot="${sysroot}" \
    --cross-compile-toolchain-bin="${toolchain}"
