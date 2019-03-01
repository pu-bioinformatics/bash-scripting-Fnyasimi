#!/bin/bash

echo "Let's try some conditional tests"

y=5
x=$(ls ../Data/*.fa | wc -l)

#creating  a function
function forloop {
	for fasta in $(ls ../Data/*.fa | cut -f3 -d "/")
                do
                        echo "These are the contents of $fasta"
                        head ../Data/$fasta
                        done
}

echo "we have `ls ../Data/*.fa | wc -l` Fasta files"

echo $x

if [ $x -gt $y ]
	then
		echo "We have many fasta files in the directory"

	elif [ $x==2 ]
	then
		echo "We have two files"

	else
		echo "We have few files in the directory. There are `ls ../Data/*.fa`"
	fi


a=$(grep '>' ../Data/nrf1_seq.fa | wc -l)

b=$(grep '>' ../Data/PlasmoDB-9.0_Pfalciparum_BarcodeIsolates.fa | wc -l)

echo $a

echo $b

if [ $a -gt $b ]
	then
		for fasta in $(ls ../Data/PlasmoDB-9.0_Pfalciparum_BarcodeIsolates.fa | cut -f3 -d "/")
		do
			echo "These are the udydy of $fasta"
			head ../Data/$fasta
			"/home/user/.linuxbrew/bin/mafft" --auto "../Data/$fasta" >  "../Results/${fasta}_aln.fa"
			done
	else
		forloop

	fi

