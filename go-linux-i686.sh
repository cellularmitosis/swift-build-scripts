#!/bin/bash

set -eu -o pipefail

./clean.sh
./fetch.sh
./unpack.sh
./patch-linux-i686.sh
./build-linux-i686.sh
