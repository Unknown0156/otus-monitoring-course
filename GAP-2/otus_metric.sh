#!/bin/bash

metric=$1

for num in $(seq 1 3); do
  eval metric$num="${RANDOM:0:2}"
done

echo "${!metric}"