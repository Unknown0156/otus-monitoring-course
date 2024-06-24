#!/bin/bash

output="["
for num in $(seq 1 3); do
  metric=$(echo "metric$num")
  output+="{\"{#OTUS_METRIC}\":\"$metric\"},"
done
output=${output%,}
output+="]"

echo "$output"