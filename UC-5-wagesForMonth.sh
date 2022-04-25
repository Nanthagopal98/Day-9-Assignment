#!/bin/bash -x

isFullTime=1
isPartTime=2
totalSalary=0
empRatePerHr=50
numOfWorkingDays=20
for (( day=1; day<=$numOfWorkingDays; day++ ))
do
	randomCheck=$((RANDOM%3))
	case $randomCheck in
		$isFullTime )
			workingHr=8
		;;
		$isPartTime )
			workingHr=4
		;;
		*)
			workingHr=0
		;;
	esac
	dailySalary=$(($empRatePerHr*$workingHr))
	totalSalary=$(($totalSalary+$dailySalary))
done
