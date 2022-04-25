#!/bin/bash -x

isFullTime=1
isPartTime=2
totalWorkingDays=0
totalEmpHr=0
empRatePerHr=50
numOfWorkingDays=20
maxRatePerMonth=100

function getWorkingHrs()
{
	case $1 in
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
}
while [[ $totalEmpHr -lt $maxRatePerMonth && 
	$totalWorkingDays -lt $numOfWorkingDays ]]
do
	((totalWorkingDays++))
	getWorkingHrs $((RANDOM%3))
	totalEmpHr=$(($totalEmpHr+$workingHr))
done
totalSalary=$(( $totalEmpHr*$empRatePerHr))
