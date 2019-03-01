#!/bin/bash

for name in John Festus Mike Joy Martha Brian
	do
		echo "$name please come to my party."
	done

for name in $(cat ../Data/names.txt)
	do
		 echo "$name please come to my party at the beach."
	done

#for file in $(ls *.txt)
	#do
	#mv $file ../Data/
	#echo "moving $file"
	#done

function forloop {
		for txt in  $(..Data/*.txt)
		do
		cat $txt | wc -l
		done
}

for file in $(ls ../Data/*.txt)
	do
	forloop
	done
