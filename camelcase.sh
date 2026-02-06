#!/bin/bash


read -p "enter string:" str
j=1
#b=`echo $str|sed 's/./& /g'|nl|awk '{print $1}'`
for i in `echo $str|sed 's/./& /g'`
do
if [ `expr "$j" % 2` -eq 0 ]
then
echo -n $i|tr a-z A-Z
else 
echo -n $i
fi
#let b++
let j++
done
