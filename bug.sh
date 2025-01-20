#!/bin/bash

# This script attempts to process a file containing a list of numbers,
# calculating the sum and average. However, it contains a subtle bug related to floating-point arithmetic.

inputFile="numbers.txt"

# Initialize variables
sum=0
count=0

# Read numbers from the file
while IFS= read -r number; do
  sum=$(echo "$sum + $number" | bc)
  count=$((count + 1))
done < "$inputFile"

# Calculate the average (incorrectly)
average=$(echo "scale=2; $sum / $count" | bc)

# Print the results
echo "Sum: $sum"
echo "Count: $count"
echo "Average: $average"