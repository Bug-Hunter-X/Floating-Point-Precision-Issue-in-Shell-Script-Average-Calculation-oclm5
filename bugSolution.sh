#!/bin/bash

# This script is a corrected version that uses awk to handle floating-point numbers precisely
inputFile="numbers.txt"

# Use awk to calculate the sum and count
result=$(awk '{sum += $1; count++} END {printf "%.2f %.0f", sum, count}' "$inputFile")

sum=$(echo $result | cut -d' ' -f1)
count=$(echo $result | cut -d' ' -f2)

# Calculate the average (correctly)
average=$(awk 'BEGIN {printf "%.2f", '$sum' / '$count'}')

# Print the results
echo "Sum: $sum"
echo "Count: $count"
echo "Average: $average"