#!/bin/bash



count=0

while [ $count -ne 5 ]; do
    echo "count is not 5 yet, it is: $count"
    count=$((count + 1))
done

echo "Count is 5 now"