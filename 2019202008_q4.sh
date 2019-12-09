#!/bin/bash

read password

if [[ "${#password}" -lt 8 ]] ; then
	echo "weak"
elif [[ "$password" != *[0-9]* ]] ; then
	echo "weak"
elif [[ "$password" != *[a-zA-Z]* ]] ; then
	echo "weak"
elif [[ "$password" != *[@#$%\&*+-=]* ]] ; then
	echo "weak"
else
	var=`echo $password | cracklib-check > temp2.txt`
	count=`grep -E -i -w -c "OK" temp2.txt`
	if [[ "$count" -ge 1 ]] ; then
		echo "strong"
	else
		echo "weak"
	fi
fi
