#!/bin/bash

# Read the numbers and operator from user input
read -p "Enter the first number: " num1
read -p "Enter the second number: " num2
read -p "Enter the operator (+, -, *, /): " operator

# Perform the calculation based on the operator
case $operator in
    "+")
        result=$(echo "$num1 + $num2" | bc)
        ;;
    "-")
        result=$(echo "$num1 - $num2" | bc)
        ;;
    "*")
        result=$(echo "$num1 * $num2" | bc)
        ;;
    "/")
        result=$(echo "scale=2; $num1 / $num2" | bc)
        ;;
    *)
        echo "Invalid operator."
        exit 1
        ;;
esac

# Print the result
echo "Result: $result"

