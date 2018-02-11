#!/bin/bash

if [[ $# -eq 0 ]]
then
echo "No introduced arguments, please type arguments"
elif [[ $# -gt 1 ]]
then
echo "Expecting 1 argument, received $#" 
elif [[ $# -eq 1 ]]
then
case $1 in
3)
echo "ugadal"
;;
"pepsi")
echo "Cola"
;;
"zopa")
echo "zdrastvuj novij god"
;;
*)
echo "nevirno"
;;
esac
fi

