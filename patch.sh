#!/usr/bin/env bash

set -eu -o pipefail

cd stage/swift
for i in ../../patches/*.patch
do
    patch -p1 < $i
done
