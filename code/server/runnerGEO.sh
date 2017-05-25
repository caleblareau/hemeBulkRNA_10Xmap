#!/bin/bash

SRR_IDS=$(cat $1 |tr "\n" " ")

for SRR in $SRR_IDS
do
echo $SRR

STAR --genomeDir /data/aryee/caleb/greenleaf_scRNAseq/refdata-cellranger-hg19-1.2.0/star/ --readFilesIn "../fastq/${SRR}_1.fastq.gz" "../fastq/${SRR}_2.fastq.gz" --readFilesCommand zcat --outFileNamePrefix ${SRR} -outStd SAM

done
