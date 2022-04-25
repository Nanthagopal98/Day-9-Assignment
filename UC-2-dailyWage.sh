#!/bin/bash -x

ispresent=1
random=$((RANDOM%2))

if [ $ispresent -eq $random ]
then
	empRatePerHr=50
	empWorkingHr=8
	salary=$(( $empRatePerHr*$empWorkingHr))
else
	salary=0
fi
