#!/usr/bin/env bash

set -eu -o pipefail

cd stage/swift
for i in notest.patch
do
    patch -p1 < ../../patches/$i
done
