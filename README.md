# Divisible or Not

## Problem

Given an array of non-negative integers, take the last digit of every element and concatenate those digits to form a number. Determine whether the resulting number is divisible by `10`.

## Key Observation

A decimal number is divisible by `10` exactly when its final digit is `0`. The final digit of the constructed number is the last digit of the last array element. Therefore, it is not necessary to construct the potentially large concatenated number.

## Algorithm

1. Read the array.
2. Select the final array element.
3. Check whether that element's last digit is `0`.
4. Print `Yes` if it is; otherwise, print `No`.

## Correctness

The constructed number ends with the last digit selected from the final array element. Divisibility by `10` depends only on this final digit. Thus, checking whether the last array element is divisible by `10` is equivalent to checking whether the entire constructed number is divisible by `10`.

## Complexity

The input must be read, so the overall input-processing time is `O(N)`. After reading the values, the decision itself takes constant time.

| Measure | Complexity |
|---|---:|
| Time | `O(N)` |
| Extra space | `O(N)` |

## Implementation

The solution is implemented in GNU Bash 5.0.17 in [`solution.sh`](solution.sh).

## Example

For `85 25 65 21 84`, the selected digits form `55514`. The final digit is `4`, so the number is not divisible by `10` and the output is `No`.
