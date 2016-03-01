#!/usr/bin/env bash

set -eu -o pipefail
set -x

source versions.bash

mkdir -p install products

cd stage

./swift/utils/build-script \
    --preset=buildbot_linux \
    install_destdir="$PWD/../install" \
    install_prefix=/ \
    installable_package="$PWD/../products/${release}_`uname -s`_`uname -m`.tar.gz"
