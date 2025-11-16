#!/bin/bash

min=100; max=-1
for i in $(ls $1)
do
for file in $(cat $1$i)
do
age=$(echo $file | cut -d ":" -f2)
#echo $age
if [ $age -lt $min ]
then
min=$age
elif [ $age -gt $max ]
then 
max=$age
fi
done
done
echo $min
echo $max
