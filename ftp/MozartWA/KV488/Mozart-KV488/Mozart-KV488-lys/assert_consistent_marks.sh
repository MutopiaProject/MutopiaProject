#!/bin/sh
# We require that the ``\solo'' and ``\tutti'' marks be applied to
# exactly the same measures for each instrument (within a given
# movement). This script verifies that invariant.
#
# Originally written by William Chargin <wchargin@gmail.com>. Released
# under the MIT License.
set -eu

cd "$(dirname "$0")"

failed=0

# Find bar numbers on which a ``\solo'' or ``\tutti'' mark appears in
# the LilyPond file given on standard input. Output is a
# newline-delimited list of numbers.
bar_numbers() {
    grep -h -B 1 '\\solo\|\\tutti' \
        | grep -F '\barNumberCheck' \
        | sed -e 's/.*#\([0-9]\+\).*/\1/' \
        | sort \
        | uniq
}

# Check that ``\solo'' and ``\tutti'' marks are consistent within the
# movement given by $1. If they are not, set the global `failed` to 1.
check_movement() {
    movement="$1"
    canonical="${movement}"/piano.ily
    expected="$(mktemp)"
    actual="$(mktemp)"
    bar_numbers <"${canonical}" >"${expected}"
    for file in "${movement}"/*.ily; do
        if ! grep -qF '\relative' "${file}"; then
            # Not a piece of music.
            continue
        fi
        bar_numbers <"${file}" >"${actual}"
        if diff -q "${expected}" "${actual}" >/dev/null 2>/dev/null; then
            continue
        fi
        # We add fake line numbers to be compatible with tools that
        # expect "file:line: error" entries, such as Vim's quickfix
        # list. It's not possible to get an accurate line number for
        # missing marks, and it would be a bunch of extra work to get it
        # for superfluous marks, so we just put everything on line 1.
        comm -23 "${expected}" "${actual}" | sort -n | awk -v file="${file}" \
            '{ printf("%s:1: missing %s\n", file, $1) }' >&2
        comm -13 "${expected}" "${actual}" | sort -n | awk -v file="${file}" \
            '{ printf("%s:1: superfluous %s\n", file, $1) }' >&2
        failed=1
    done
    rm "${expected}" "${actual}"
}

main() {
    check_movement 01_allegro
    check_movement 02_andante
    exit "${failed}"
}

main
