#!/usr/bin/env bash
set -euo pipefail

root=$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)

run_case() {
    local input="$1"
    local expected="$2"
    local actual
    actual=$(printf '%s' "$input" | "$root/solution.sh")
    [[ "$actual" == "$expected" ]] || {
        printf 'FAIL\nInput:\n%s\nExpected: %s\nActual: %s\n' "$input" "$expected" "$actual" >&2
        exit 1
    }
}

run_case $'5\n85 25 65 21 84\n' 'No'
run_case $'3\n12 23 40\n' 'Yes'
run_case $'1\n0\n' 'Yes'
run_case $'4\n10 21 32 100\n' 'Yes'

printf 'All Divisible or Not tests passed.\n'
