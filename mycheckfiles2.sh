#!/bin/bash

# Loop through all files matching the pattern rpl*.out
for file in rpl*.out
do
    echo "Processing file: $file"
    
    # Extract and print the start time (first occurrence of tm_year)
    start_time=$(grep "tm_year" "$file" | head -n 1)
    echo "Start Time: $start_time"
    
    # Extract and print the end time (last occurrence of tm_year)
    end_time=$(grep "tm_year" "$file" | tail -n 1)
    echo "End Time: $end_time"
    
    echo ""
done


echo "Number of hkl files"
find . -name "*.hkl" | grep -v -e spiketrain -e mountains | wc -l

echo "Number of mda files"
find mountains -name "firings.mda" | wc -l

echo "Time taken (s)"
tail rpl*.out
