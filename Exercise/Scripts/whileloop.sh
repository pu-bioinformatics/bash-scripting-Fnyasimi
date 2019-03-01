#!/bin/bash

n=1

while [ $n -le 5 ] # condition test
	do
	   echo "Welcome $n times" #execute
		#n+=1 
		n=$((n+1))
	done
