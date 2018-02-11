#!/bin/bash

funcheader () {
  for i in {1..20}; do
    if [[ $i -eq 1 ]]; then
      header=$header"[  "$i" ] "
    elif [[ $i -lt 10 ]]; then
      header=$header"[ "$i" ]  "
    else 
      header=$header"[ "$i" ] "
    fi
  done
  echo "$header"
}
funcheader
functable () {
  for x in {1..19}; do
    if [[ $x -lt 10 ]]; then
      title="[  "$x" ]   "
    else
      title="[ "$x" ]   "
    fi
    for y in {2..20}; do
      result=$(( x * y ))
      if [[ $result -lt 10 ]]; then
        title="$title"$result"      "
      elif [[ $result -lt 100 ]]; then
        title="$title"$result"     "
      else
        title="$title"$result"    "
      fi
    done
    echo "$title"
  done  
}
functable

