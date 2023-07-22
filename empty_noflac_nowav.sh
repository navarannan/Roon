#!/bin/bash
for d in */; do
	cd "$d"
	count1=`ls -l *.flac 2>/dev/null | wc -l`
	count2=`ls -l *.wav 2>/dev/null | wc -l`
	cd ..
	if [[ $count1 == 0 && $count2 == 0 ]];then
		echo "$d" >> file.txt
	fi
done
