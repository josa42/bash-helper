#!/bin/bash

# Example
# 
# ```
# array=("cat" "dog")
# if contains "cat" "${array[@]}"; then
#   echo "Contains cat"
# fi
# ```
# 
# $1 : element
# $2 : array
contains() {
  local e match="$1"
  shift
  for e; do [[ "$e" == "$match" ]] && return 0; done
  return 1
}