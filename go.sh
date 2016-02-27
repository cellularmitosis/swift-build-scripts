#!/bin/bash

set -eu -o pipefail

./clean.sh
./fetch.sh
./unpack.sh
./patch.sh
./build1.sh
./build2.sh

