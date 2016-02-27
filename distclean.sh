#!/bin/bash

set -eu -o pipefail

./clean.sh
rm -rf cache products
