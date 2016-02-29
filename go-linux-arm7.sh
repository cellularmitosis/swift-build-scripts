#!/bin/bash

set -eu -o pipefail

./clean.sh
./fetch.sh
./unpack.sh
./patch-linux-arm7.sh
./build-linux-arm7.sh
