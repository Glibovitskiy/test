#!/bin/bash

StartGame () {
  clear
  echo "Enter the maximum random number:"
  read maximum
  secret=$(( ( RANDOM % $maximum ) + 1 ))
  try=0
  until [[ $guess -eq $secret ]]; do
    echo "Now try to guess:"
    read guess
    if [[ $guess -gt $secret ]]; then
      ((try++))
      echo "Your input is bigger then secret, try again"
    elif [[ $guess -lt $secret ]]; then
      ((try++))
      echo "Your input is lower then secret, try again"
    fi
  done
  echo "Good Job, it took $try tries to guess the random number from 1 to $maximum"
  exit
}


OPTIONS="Start Quit"
select opt in $OPTIONS
do
  if [ "$opt" = "Quit" ]; then
    echo done
    exit
  elif [ "$opt" = "Start" ]; then
    StartGame
  else
    echo "Bad option"
  fi
done

