#!/bin/bash

SRR_IDS=$(cat $1 |tr "\n" " ")

for SRR in $SRR_IDS
do
echo $SRR
	bsub -q normal sh htseq1.sh $SRR
	sleep 2
done
