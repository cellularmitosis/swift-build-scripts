#!/usr/bin/env bash

set -eu -o pipefail

cd stage/swift
for i in notest.patch i686.1.patch i686.2.patch i686.3.patch i686.4.patch
do
    patch -p1 < ../../patches/$i
done