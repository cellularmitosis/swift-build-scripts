#!/bin/bash

set -eu -o pipefail

./clean.sh
./fetch.sh
./unpack.sh
./patch-linux-armv7.sh
./build-linux-armv7.sh
