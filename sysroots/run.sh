#!/bin/bash

set -e
set -x

./make_sysroot.py --distro ubuntu --version trusty --arch armhf --install sysroot.armhf.ubuntu.trusty
#./make_sysroot.py --distro debian --version jessie --arch armel --install sysroot.armel.debian.jessie

