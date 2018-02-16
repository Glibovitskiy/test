#!/bin/bash

createfile   () {
  touch $1
}
newfolder () {
  mkdir $1
}


dir          () {
  ls -la
}

while getopts ":d:f:lh" option; do
  case $option in
    d)
      newfolder $OPTARG
      ;;
    f)
      createfile $OPTARG
      ;;
    l)
      dir
      ;;
    h)
      cat readme.txt
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
