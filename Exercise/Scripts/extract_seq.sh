#!/bin/bash

less /home/user/github/bash-scripting-Fnyasimi/Exercise/Data/nrf1_seq.fa | grep ^'>' > /home/user/github/bash-scripting-Fnyasimi/Exercise/Results/sequence_names.txt
cut -d ' ' -f 1 /home/user/github/bash-scripting-Fnyasimi/Exercise/Results/sequence_names.txt | cut -c 2- > /home/user/github/bash-scripting-Fnyasimi/Exercise/Results/sequence_ids.txt
