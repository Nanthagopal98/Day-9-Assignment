#!/bin/bash -x

ispresent=1
random=$((RANDOM%2))

if [ $ispresent -eq $random ]
then
	echo "Emp present"
else
	echo "Emp absent"
fi
