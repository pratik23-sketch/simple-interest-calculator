#!/bin/bash
# This script calculates simple interest.
# Author: Pratik

echo "Enter the principal amount:"
read p
echo "Enter rate of interest per year (in %):"
read r
echo "Enter time period in years:"
read t

# Calculation
interest=$(echo "scale=2; $p * $t * $r / 100" | bc -l 2>/dev/null || echo "$p * $t * $r / 100" | bc)

echo "The simple interest is: $interest"
