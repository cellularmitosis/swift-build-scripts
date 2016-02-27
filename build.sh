#!/usr/bin/env bash

set -eu -o pipefail
set -x

source versions.bash

mkdir -p dest dist

#./swift/utils/build-script -R

./swift/utils/build-script \
    --preset=buildbot_linux_armv7 \
    install_destdir="$PWD/dest" \
    installable_package="$PWD/dist/${release}_`uname -s`_`uname -m`.tar.gz"
