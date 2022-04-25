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
}
function totalEmpWage()
{
	echo $(( $totalEmpHr*$empRatePerHr ))
}
while [[ $totalEmpHr -lt $maxRatePerMonth && 
	$totalWorkingDays -lt $numOfWorkingDays ]]
do
	((totalWorkingDays++))
	randomCheck=$((RANDOM%3))
	getWorkingHrs $randomCheck
	totalEmpHr=$(($totalEmpHr+$workingHr))
	dailyWage["$totalWorkingDays"]=$(($workingHr*$empRatePerHr))
done
totalSalary="$( totalEmpWage $empRatePerHr )"
echo ${dailyWage[@]}   #array

echo ${!dailyWage[@]}   #dictionary
echo ${#dailyWage[@]}   #total number of working days
