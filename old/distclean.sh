#!/bin/bash

set -eu -o pipefail

./clean.sh
rm -rf products

cd sysroots
./clean.sh
