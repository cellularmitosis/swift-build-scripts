#!/bin/bash

set -eu -o pipefail

./clean.sh
./fetch.sh
./unpack.sh
./patch-linux-x86_64.sh
./build-linux-x86_64.sh
