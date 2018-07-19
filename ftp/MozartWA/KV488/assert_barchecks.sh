#!/bin/bash
# We require that each ``\solo'' or ``\tutti'' directive in the score be
# immediately preceded by a numeric barcheck, because this makes
# cross-referencing easier. This script verifies the invariant.
#
# Originally written by William Chargin <wchargin@gmail.com>. Released
# under the MIT License.
set -eu

cd "$(dirname "$0")"

awk '
    { prevCheck = !!check; check = /\\barNumberCheck/ }
    /\\solo|\\tutti/ && !(check || prevCheck) {
        printf("%s:%s: unchecked solo/tutti: %s\n", FILENAME, FNR, $0)
    }
' 0?_*/*.ily | tee >(cat >&2) | diff -q /dev/null - >/dev/null
