#!/bin/bash

location=/usr/share/dict/words
rand=$((RANDOM*RANDOM*RANDOM+RANDOM-RANDOM))

if [ $# -ne 0 ]; then
	total=$(egrep "^[A-Za-z]{$1}$" $location | wc -l)
	if [ $total -ne 0 ]; then
		num=$((rand % total))
		word=$(egrep "^[A-Za-z]{$1}$" "${location}" | sed -n "${num}p")
	else
		word="Be real"
	fi
else
	total=$(cat $location | wc -l)
	num=$((rand % total))
	word=$(sed -n "${num}p" "${location}")
fi


echo $word
