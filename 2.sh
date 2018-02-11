#!/bin/bash
if [[ $# -eq 0 ]]
then
echo "script haven't received any arguments"
else
case $1 in
10)
echo "v zad"
;;
valera)
echo "sam ty valera"
;;
"v zad")
echo "tak bi i srazu"
;;
*)
echo "huinju smorozil"
esac
fi
