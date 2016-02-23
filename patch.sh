#!/usr/bin/env bash

set -eu -o pipefail

for i in patches/*.patch
do
    patch < $i
done
