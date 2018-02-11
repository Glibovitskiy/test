#!/bin/bash

funca () {
  echo "Перша єсть: $1"
}
funcb () {
command  cat $1
}
while getopts ":a:b:c" option; do
  case $option in
    a) 
      funca $OPTARG 
      ;;
    b)	    
      funcb $OPTARG
      ;;
    c)
      echo "C spracjuvalo"
      ;;
    \?) 
      echo "Invalid option: -$OPTARG" >&2
      exit 1
      ;;
    :)
      echo "Option -$OPTARG requires an argument." >&2
      exit 1  
      ;;
 
   esac
done 
