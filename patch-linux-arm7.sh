#!/usr/bin/env bash

set -eu -o pipefail

cd stage/swift
for i in ../../patches/1398.patch
do
    patch -p1 < $i
done
