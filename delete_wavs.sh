#!/bin/bash
for d in */; do
	cd "$d"
	count=`ls -l *.flac 2>/dev/null | wc -l`
	if [ $count == 0 ];then
		cd flac
		count2=`ls -l *.flac 2>/dev/null | wc -l`
		if [ $count2 != 0 ]; then
			rm -rf ../wav
			mv *.* ../
			count2=`ls -l *.flac 2>/dev/null | wc -l`
			if [ $count2 == 0 ]; then
				cd ..
				rm -rf flac
			fi
			cd ..
		fi
	fi
	cd ..
	if [ -d "$d" ] && [ $count != 0 ]; then
		rm -rf "$d"/wav
		rm -rf "$d"/*.wav
		#$echo "$d" >> file.txt
	fi
done
