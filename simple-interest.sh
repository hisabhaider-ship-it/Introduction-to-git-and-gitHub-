#!/bin/bash
# Simple Interest Calculator Script

echo "-----------------------------------"
echo "    Simple Interest Calculator     "
echo "-----------------------------------"

# Input Principal Amount
echo -n "Enter the Principal Amount: "
read p

# Input Rate of Interest
echo -n "Enter Rate of Interest per annum (%): "
read r

# Input Time Period in Years
echo -n "Enter Time Period (in years): "
read t

# Calculate Simple Interest
# Formula: SI = (P * R * T) / 100
si=$(echo "scale=2; ($p * $r * $t) / 100" | bc -l 2>/dev/null || echo "$(( (p * r * t) / 100 ))")

echo "-----------------------------------"
echo "Simple Interest: $si"
echo "-----------------------------------"
