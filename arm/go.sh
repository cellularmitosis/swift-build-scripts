#!/bin/bash

set -eu -o pipefail
set -x

SELF_NAME="$( basename "${BASH_SOURCE[0]}" )"
SELF_DIR="$( dirname $( readlink -e "${BASH_SOURCE[0]}" ) )"
SELF_VERSION=$( echo "${SELF_NAME}" | sed 's/go\(.*\)\.sh/\1/' )

SHAS="${SELF_DIR}/shas${SELF_VERSION}.bash"
source "${SHAS}"

source "${SELF_DIR}/vars.bash"

export SWIFT_SOURCE_ROOT="$( pwd )/swift_src"
export SWIFT_BUILD_ROOT="$( pwd )/swift_build"

mkdir -p "${SWIFT_SOURCE_ROOT}"
mkdir -p "${SWIFT_BUILD_ROOT}"

function onexit
{
    echo "Results are in ${SWIFT_BUILD_ROOT}"
}

trap onexit EXIT

cd "${SWIFT_BUILD_ROOT}"
"${SELF_DIR}/fetch${SELF_VERSION}.sh" 2>&1 | tee -a log.txt
"${SELF_DIR}/patch${SELF_VERSION}.sh" 2>&1 | tee -a log.txt
"${SELF_DIR}/build${SELF_VERSION}.sh" 2>&1 | tee -a log.txt

