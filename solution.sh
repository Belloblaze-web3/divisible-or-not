#!/usr/bin/env bash

read -r n
read -r -a values
last_value=${values[n - 1]}

if (( last_value % 10 == 0 )); then
    printf 'Yes\n'
else
    printf 'No\n'
fi
