#!/bin/bash

SRR=$1

#STAR --genomeDir /data/aryee/caleb/greenleaf_scRNAseq/refdata-cellranger-hg19-1.2.0/star/ --readFilesIn "../fastq/${SRR}_1.fastq.gz" "../fastq/${SRR}_2.fastq.gz" --readFilesCommand zcat --outFileNamePrefix ${SRR} -outStd SAM
samtools view -bS "${SRR}Aligned.out.sam" | samtools sort - -o "${SRR}.bam"
htseq-count -f bam "${SRR}.bam" -s no -a 30 /data/aryee/caleb/greenleaf_scRNAseq/refdata-cellranger-hg19-1.2.0/genes/genes.gtf -q -o "${SRR}.samOut" > "${SRR}.htseq-counts.txt"


