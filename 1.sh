#!/bin/bash

if [[  $# -ge 1 && $1 != 10 ]]
then
echo "variable exist and not equal ten"
elif [[ $1 -eq 10 ]]
then 
echo "v desjatocku"
else
echo "variable doesn't exist"
fi

