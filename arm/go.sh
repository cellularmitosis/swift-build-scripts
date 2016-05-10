#!/bin/bash

set -eu -o pipefail
set -x

SELF_NAME="$( basename "${BASH_SOURCE[0]}" )"
SELF_DIR="$( dirname $( readlink -e "${BASH_SOURCE[0]}" ) )"
SELF_VERSION=$( echo "${SELF_NAME}" | sed 's/go\(.*\)\.sh/\1/' )

"${SELF_DIR}/fetch${SELF_VERSION}.sh" 2>&1 | tee -a log.txt
"${SELF_DIR}/patch${SELF_VERSION}.sh" 2>&1 | tee -a log.txt
"${SELF_DIR}/build${SELF_VERSION}.sh" 2>&1 | tee -a log.txt
