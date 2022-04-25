#!/bin/bash -x

isFullTime=1
isPartTime=2
empRatePerHr=50
randomCheck=$((RANDOM%3))

case $randomCheck in
	$isFullTime )
		workingHrs=8
	;;
	$isPartTime )
		workingHrs=4
	;;
	*)
		workingHrs=0
esac
salary=$(($empRatePerHr*$workingHrs))
echo $salary
