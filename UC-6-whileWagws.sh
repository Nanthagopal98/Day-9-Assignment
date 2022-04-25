#!/bin/bash -x

isPartTime=1
isFullTime=2
empRatePerHr=20
numOfWorkingDays=20
maxHoursInMonth=160
totalEmpHr=0
totalWorkingDays=0

while [[ $totalEmpHr -lt $maxHoursInMonth && 
         $totalWorkingDays -lt $numOfWorkingDays ]]
do
	randomCheck=$((RANDOM%3))
	case $randomCheck in
		$isPartTime )
			empHr=4
		;;
		$isFullTime )
			empHr=8
		;;
		*)
			empHr=0
		;;
	esac
((totalWorkingDays++))
totalEmpHr=$(($totalEmpHr+$empHr))
done
totalSalary=$(($totalEmpHr*$empRatePerHr))
