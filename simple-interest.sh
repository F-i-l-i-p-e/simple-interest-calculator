#!/bin/bash

# Simple Interest Calculator
# Author: Filipe
# Additional Authors: F-i-l-i-p-e

principal=$1
rate=$2
time=$3

if [ -z "$principal" ] || [ -z "$rate" ] || [ -z "$time" ]; then
    echo "Usage: ./simple-interest.sh [principal] [rate in %] [time in years]"
    exit 1
fi

simple_interest=$(echo "scale=2; ($principal * $rate * $time)/100" | bc)

echo "Simple Interest for principal amount $principal units, interest rate $rate%, over $time years is: $simple_interest units"
