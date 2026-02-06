#!/bin/bash
a=$1
b=$2
if [ "$2" == k -o "$2" == K ]
then
echo $(($1/1024))
elif [ "$2" == m -o "$2" == O ]
then
echo $(($1/1024**2))

elif [ "$2" == g -o "$2" == G ]
then

echo $(($1/1024**3))
fi


