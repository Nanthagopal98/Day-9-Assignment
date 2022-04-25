#!/bin/bash -x

isfulltime=1
isparttime=2
empRatePerHr=50
randomcheck=$((RANDOM%3))

if [ $isfulltime -eq $randomcheck ]
then
	workingHrs=8
elif [ $isparttime -eq $randomcheck ]
then
	workingHrs=4
else
	workingHrs=0
fi
	salary=$(($empRatePerHr*$workingHrs))
echo $salary
