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

# Example
# 
# ```
# array=($(split "cat,dog" ","))
# for element in ${array[@]}; do
#   echo "- $element"
# done
# ```
#
# $1 : string
# $2 : separator
split() {
  IFS="$2" read -ra array <<< "$1"
  echo "${array[@]}";
}

