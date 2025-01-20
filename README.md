# Shell Script Bug: Floating-Point Arithmetic Precision

This repository demonstrates a common bug in shell scripts related to floating-point arithmetic precision. The script attempts to calculate the average of numbers from a file but produces an inaccurate result due to limitations in handling floating-point numbers.

## Bug Description
The script uses the "bc" command for arithmetic operations. While "bc" supports floating-point numbers, its precision can be limited, leading to inaccuracies in calculations involving floating-point numbers.  The primary issue is that floating-point numbers are not always represented exactly in binary, leading to rounding errors.

## Bug Solution
The solution utilizes the "awk" command which handles floating-point arithmetic with greater precision, ensuring a more accurate average calculation.

## How to Reproduce
1. Clone the repository.
2. Create a file named "numbers.txt" with a list of numbers (e.g., 1.2, 3.4, 5.6).
3. Run the buggy script (bug.sh).
4. Compare the output with the solution script (bugSolution.sh).