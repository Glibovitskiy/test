#!/bin/bash

startgame () {
  clear
  echo "Игра началась!!!!!!!!!!"
  echo "введіть макс. число"
  read maximum
  secret=$(( ( RANDOM % $maximum )  + 1 ))	 
  try=1
  until [[ $guess -eq $secret ]]; do
    echo "введіть число"
    read guess
    if [[ $guess -gt $secret ]]; then
      ((try++))
      echo "число є більше за задане" 
    elif [[ $guess -lt $secret ]]; then
      ((try++))
      echo "число є менше за задане"
    fi
  done
  echo "Ви вгдали чило від 1 до $maximum, це зайняло $try спроб" 
  exit
}

elkagori () {
  clear
  echo "Введите символ для веток"
  read vetka 
  echo "Ёлочка гори мать твою"
  mystring=""
  for x in {1..30}
  do
  mystring=$mystring$vetka
  echo $mystring
  done
  exit
}

OPTIONS="start quit elka"
select opt in $OPTIONS; do
  if [ "$opt" = "start" ]; then 
    startgame 
    elif [ "$opt" = "quit" ]; then
    echo "pzdc"
    exit
      elif [ "$opt" = "elka" ]; then
      echo "введите количество веток"
      elkagori
  else
    echo "не вірне значення"
  fi
done  
