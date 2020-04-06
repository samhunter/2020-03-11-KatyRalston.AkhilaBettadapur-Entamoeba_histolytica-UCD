echo F1_LibB1-1
bwa mem -t 110 -M -R '@RG\tID:F1_LibB1-1\tSM:F1_LibB1-1\tPL:ILLUMINA\tDS:Paired' /share/biocore/projects/Ralston_K_UCD/sh-analysis/Reference/AmoebaDB-46_EhistolyticaHM1IMSS_Genome.fasta ./01-cleaned/F1_LibB1-1_R1.fastq.gz ./01-cleaned/F1_LibB1-1_R2.fastq.gz | samtools view -o ./02-mapped/F1_LibB1-1.bam -
samtools sort --threads 110 ./02-mapped/F1_LibB1-1.bam -o ./03-sorted/F1_LibB1-1_sorted.bam
samtools idxstats ./03-sorted/F1_LibB1-1_sorted.bam > ./03-sorted/F1_LibB1-1_sorted.idxstats
samtools flagstat ./03-sorted/F1_LibB1-1_sorted.bam > ./03-sorted/F1_LibB1-1_sorted.flagstat
samtools stats ./03-sorted/F1_LibB1-1_sorted.bam > ./03-sorted/F1_LibB1-1_sorted.stats
echo C9-LibC3
bwa mem -t 110 -M -R '@RG\tID:C9-LibC3\tSM:C9-LibC3\tPL:ILLUMINA\tDS:Paired' /share/biocore/projects/Ralston_K_UCD/sh-analysis/Reference/AmoebaDB-46_EhistolyticaHM1IMSS_Genome.fasta ./01-cleaned/C9-LibC3_R1.fastq.gz ./01-cleaned/C9-LibC3_R2.fastq.gz | samtools view -o ./02-mapped/C9-LibC3.bam -
samtools sort --threads 110 ./02-mapped/C9-LibC3.bam -o ./03-sorted/C9-LibC3_sorted.bam
samtools idxstats ./03-sorted/C9-LibC3_sorted.bam > ./03-sorted/C9-LibC3_sorted.idxstats
samtools flagstat ./03-sorted/C9-LibC3_sorted.bam > ./03-sorted/C9-LibC3_sorted.flagstat
samtools stats ./03-sorted/C9-LibC3_sorted.bam > ./03-sorted/C9-LibC3_sorted.stats
echo F10_LibB4-1
bwa mem -t 110 -M -R '@RG\tID:F10_LibB4-1\tSM:F10_LibB4-1\tPL:ILLUMINA\tDS:Paired' /share/biocore/projects/Ralston_K_UCD/sh-analysis/Reference/AmoebaDB-46_EhistolyticaHM1IMSS_Genome.fasta ./01-cleaned/F10_LibB4-1_R1.fastq.gz ./01-cleaned/F10_LibB4-1_R2.fastq.gz | samtools view -o ./02-mapped/F10_LibB4-1.bam -
samtools sort --threads 110 ./02-mapped/F10_LibB4-1.bam -o ./03-sorted/F10_LibB4-1_sorted.bam
samtools idxstats ./03-sorted/F10_LibB4-1_sorted.bam > ./03-sorted/F10_LibB4-1_sorted.idxstats
samtools flagstat ./03-sorted/F10_LibB4-1_sorted.bam > ./03-sorted/F10_LibB4-1_sorted.flagstat
samtools stats ./03-sorted/F10_LibB4-1_sorted.bam > ./03-sorted/F10_LibB4-1_sorted.stats
echo F5_LibB2-2
bwa mem -t 110 -M -R '@RG\tID:F5_LibB2-2\tSM:F5_LibB2-2\tPL:ILLUMINA\tDS:Paired' /share/biocore/projects/Ralston_K_UCD/sh-analysis/Reference/AmoebaDB-46_EhistolyticaHM1IMSS_Genome.fasta ./01-cleaned/F5_LibB2-2_R1.fastq.gz ./01-cleaned/F5_LibB2-2_R2.fastq.gz | samtools view -o ./02-mapped/F5_LibB2-2.bam -
samtools sort --threads 110 ./02-mapped/F5_LibB2-2.bam -o ./03-sorted/F5_LibB2-2_sorted.bam
samtools idxstats ./03-sorted/F5_LibB2-2_sorted.bam > ./03-sorted/F5_LibB2-2_sorted.idxstats
samtools flagstat ./03-sorted/F5_LibB2-2_sorted.bam > ./03-sorted/F5_LibB2-2_sorted.flagstat
samtools stats ./03-sorted/F5_LibB2-2_sorted.bam > ./03-sorted/F5_LibB2-2_sorted.stats
echo Undetermined
bwa mem -t 110 -M -R '@RG\tID:Undetermined\tSM:Undetermined\tPL:ILLUMINA\tDS:Paired' /share/biocore/projects/Ralston_K_UCD/sh-analysis/Reference/AmoebaDB-46_EhistolyticaHM1IMSS_Genome.fasta ./01-cleaned/Undetermined_R1.fastq.gz ./01-cleaned/Undetermined_R2.fastq.gz | samtools view -o ./02-mapped/Undetermined.bam -
samtools sort --threads 110 ./02-mapped/Undetermined.bam -o ./03-sorted/Undetermined_sorted.bam
samtools idxstats ./03-sorted/Undetermined_sorted.bam > ./03-sorted/Undetermined_sorted.idxstats
samtools flagstat ./03-sorted/Undetermined_sorted.bam > ./03-sorted/Undetermined_sorted.flagstat
samtools stats ./03-sorted/Undetermined_sorted.bam > ./03-sorted/Undetermined_sorted.stats
echo B7-F18c
bwa mem -t 110 -M -R '@RG\tID:B7-F18c\tSM:B7-F18c\tPL:ILLUMINA\tDS:Paired' /share/biocore/projects/Ralston_K_UCD/sh-analysis/Reference/AmoebaDB-46_EhistolyticaHM1IMSS_Genome.fasta ./01-cleaned/B7-F18c_R1.fastq.gz ./01-cleaned/B7-F18c_R2.fastq.gz | samtools view -o ./02-mapped/B7-F18c.bam -
samtools sort --threads 110 ./02-mapped/B7-F18c.bam -o ./03-sorted/B7-F18c_sorted.bam
samtools idxstats ./03-sorted/B7-F18c_sorted.bam > ./03-sorted/B7-F18c_sorted.idxstats
samtools flagstat ./03-sorted/B7-F18c_sorted.bam > ./03-sorted/B7-F18c_sorted.flagstat
samtools stats ./03-sorted/B7-F18c_sorted.bam > ./03-sorted/B7-F18c_sorted.stats
echo C8-LibC3
bwa mem -t 110 -M -R '@RG\tID:C8-LibC3\tSM:C8-LibC3\tPL:ILLUMINA\tDS:Paired' /share/biocore/projects/Ralston_K_UCD/sh-analysis/Reference/AmoebaDB-46_EhistolyticaHM1IMSS_Genome.fasta ./01-cleaned/C8-LibC3_R1.fastq.gz ./01-cleaned/C8-LibC3_R2.fastq.gz | samtools view -o ./02-mapped/C8-LibC3.bam -
samtools sort --threads 110 ./02-mapped/C8-LibC3.bam -o ./03-sorted/C8-LibC3_sorted.bam
samtools idxstats ./03-sorted/C8-LibC3_sorted.bam > ./03-sorted/C8-LibC3_sorted.idxstats
samtools flagstat ./03-sorted/C8-LibC3_sorted.bam > ./03-sorted/C8-LibC3_sorted.flagstat
samtools stats ./03-sorted/C8-LibC3_sorted.bam > ./03-sorted/C8-LibC3_sorted.stats
echo gLibA-A5
bwa mem -t 110 -M -R '@RG\tID:gLibA-A5\tSM:gLibA-A5\tPL:ILLUMINA\tDS:Paired' /share/biocore/projects/Ralston_K_UCD/sh-analysis/Reference/AmoebaDB-46_EhistolyticaHM1IMSS_Genome.fasta ./01-cleaned/gLibA-A5_R1.fastq.gz ./01-cleaned/gLibA-A5_R2.fastq.gz | samtools view -o ./02-mapped/gLibA-A5.bam -
samtools sort --threads 110 ./02-mapped/gLibA-A5.bam -o ./03-sorted/gLibA-A5_sorted.bam
samtools idxstats ./03-sorted/gLibA-A5_sorted.bam > ./03-sorted/gLibA-A5_sorted.idxstats
samtools flagstat ./03-sorted/gLibA-A5_sorted.bam > ./03-sorted/gLibA-A5_sorted.flagstat
samtools stats ./03-sorted/gLibA-A5_sorted.bam > ./03-sorted/gLibA-A5_sorted.stats
echo D11_FB-2
bwa mem -t 110 -M -R '@RG\tID:D11_FB-2\tSM:D11_FB-2\tPL:ILLUMINA\tDS:Paired' /share/biocore/projects/Ralston_K_UCD/sh-analysis/Reference/AmoebaDB-46_EhistolyticaHM1IMSS_Genome.fasta ./01-cleaned/D11_FB-2_R1.fastq.gz ./01-cleaned/D11_FB-2_R2.fastq.gz | samtools view -o ./02-mapped/D11_FB-2.bam -
samtools sort --threads 110 ./02-mapped/D11_FB-2.bam -o ./03-sorted/D11_FB-2_sorted.bam
samtools idxstats ./03-sorted/D11_FB-2_sorted.bam > ./03-sorted/D11_FB-2_sorted.idxstats
samtools flagstat ./03-sorted/D11_FB-2_sorted.bam > ./03-sorted/D11_FB-2_sorted.flagstat
samtools stats ./03-sorted/D11_FB-2_sorted.bam > ./03-sorted/D11_FB-2_sorted.stats
echo B2-FA
bwa mem -t 110 -M -R '@RG\tID:B2-FA\tSM:B2-FA\tPL:ILLUMINA\tDS:Paired' /share/biocore/projects/Ralston_K_UCD/sh-analysis/Reference/AmoebaDB-46_EhistolyticaHM1IMSS_Genome.fasta ./01-cleaned/B2-FA_R1.fastq.gz ./01-cleaned/B2-FA_R2.fastq.gz | samtools view -o ./02-mapped/B2-FA.bam -
samtools sort --threads 110 ./02-mapped/B2-FA.bam -o ./03-sorted/B2-FA_sorted.bam
samtools idxstats ./03-sorted/B2-FA_sorted.bam > ./03-sorted/B2-FA_sorted.idxstats
samtools flagstat ./03-sorted/B2-FA_sorted.bam > ./03-sorted/B2-FA_sorted.flagstat
samtools stats ./03-sorted/B2-FA_sorted.bam > ./03-sorted/B2-FA_sorted.stats
echo B11-Lib18c
bwa mem -t 110 -M -R '@RG\tID:B11-Lib18c\tSM:B11-Lib18c\tPL:ILLUMINA\tDS:Paired' /share/biocore/projects/Ralston_K_UCD/sh-analysis/Reference/AmoebaDB-46_EhistolyticaHM1IMSS_Genome.fasta ./01-cleaned/B11-Lib18c_R1.fastq.gz ./01-cleaned/B11-Lib18c_R2.fastq.gz | samtools view -o ./02-mapped/B11-Lib18c.bam -
samtools sort --threads 110 ./02-mapped/B11-Lib18c.bam -o ./03-sorted/B11-Lib18c_sorted.bam
samtools idxstats ./03-sorted/B11-Lib18c_sorted.bam > ./03-sorted/B11-Lib18c_sorted.idxstats
samtools flagstat ./03-sorted/B11-Lib18c_sorted.bam > ./03-sorted/B11-Lib18c_sorted.flagstat
samtools stats ./03-sorted/B11-Lib18c_sorted.bam > ./03-sorted/B11-Lib18c_sorted.stats
echo C3-LibC1
bwa mem -t 110 -M -R '@RG\tID:C3-LibC1\tSM:C3-LibC1\tPL:ILLUMINA\tDS:Paired' /share/biocore/projects/Ralston_K_UCD/sh-analysis/Reference/AmoebaDB-46_EhistolyticaHM1IMSS_Genome.fasta ./01-cleaned/C3-LibC1_R1.fastq.gz ./01-cleaned/C3-LibC1_R2.fastq.gz | samtools view -o ./02-mapped/C3-LibC1.bam -
samtools sort --threads 110 ./02-mapped/C3-LibC1.bam -o ./03-sorted/C3-LibC1_sorted.bam
samtools idxstats ./03-sorted/C3-LibC1_sorted.bam > ./03-sorted/C3-LibC1_sorted.idxstats
samtools flagstat ./03-sorted/C3-LibC1_sorted.bam > ./03-sorted/C3-LibC1_sorted.flagstat
samtools stats ./03-sorted/C3-LibC1_sorted.bam > ./03-sorted/C3-LibC1_sorted.stats
echo F4_LibB2-1
bwa mem -t 110 -M -R '@RG\tID:F4_LibB2-1\tSM:F4_LibB2-1\tPL:ILLUMINA\tDS:Paired' /share/biocore/projects/Ralston_K_UCD/sh-analysis/Reference/AmoebaDB-46_EhistolyticaHM1IMSS_Genome.fasta ./01-cleaned/F4_LibB2-1_R1.fastq.gz ./01-cleaned/F4_LibB2-1_R2.fastq.gz | samtools view -o ./02-mapped/F4_LibB2-1.bam -
samtools sort --threads 110 ./02-mapped/F4_LibB2-1.bam -o ./03-sorted/F4_LibB2-1_sorted.bam
samtools idxstats ./03-sorted/F4_LibB2-1_sorted.bam > ./03-sorted/F4_LibB2-1_sorted.idxstats
samtools flagstat ./03-sorted/F4_LibB2-1_sorted.bam > ./03-sorted/F4_LibB2-1_sorted.flagstat
samtools stats ./03-sorted/F4_LibB2-1_sorted.bam > ./03-sorted/F4_LibB2-1_sorted.stats
echo B5-FC
bwa mem -t 110 -M -R '@RG\tID:B5-FC\tSM:B5-FC\tPL:ILLUMINA\tDS:Paired' /share/biocore/projects/Ralston_K_UCD/sh-analysis/Reference/AmoebaDB-46_EhistolyticaHM1IMSS_Genome.fasta ./01-cleaned/B5-FC_R1.fastq.gz ./01-cleaned/B5-FC_R2.fastq.gz | samtools view -o ./02-mapped/B5-FC.bam -
samtools sort --threads 110 ./02-mapped/B5-FC.bam -o ./03-sorted/B5-FC_sorted.bam
samtools idxstats ./03-sorted/B5-FC_sorted.bam > ./03-sorted/B5-FC_sorted.idxstats
samtools flagstat ./03-sorted/B5-FC_sorted.bam > ./03-sorted/B5-FC_sorted.flagstat
samtools stats ./03-sorted/B5-FC_sorted.bam > ./03-sorted/B5-FC_sorted.stats
echo F11_LibB4-2
bwa mem -t 110 -M -R '@RG\tID:F11_LibB4-2\tSM:F11_LibB4-2\tPL:ILLUMINA\tDS:Paired' /share/biocore/projects/Ralston_K_UCD/sh-analysis/Reference/AmoebaDB-46_EhistolyticaHM1IMSS_Genome.fasta ./01-cleaned/F11_LibB4-2_R1.fastq.gz ./01-cleaned/F11_LibB4-2_R2.fastq.gz | samtools view -o ./02-mapped/F11_LibB4-2.bam -
samtools sort --threads 110 ./02-mapped/F11_LibB4-2.bam -o ./03-sorted/F11_LibB4-2_sorted.bam
samtools idxstats ./03-sorted/F11_LibB4-2_sorted.bam > ./03-sorted/F11_LibB4-2_sorted.idxstats
samtools flagstat ./03-sorted/F11_LibB4-2_sorted.bam > ./03-sorted/F11_LibB4-2_sorted.flagstat
samtools stats ./03-sorted/F11_LibB4-2_sorted.bam > ./03-sorted/F11_LibB4-2_sorted.stats
echo gLibA-A7
bwa mem -t 110 -M -R '@RG\tID:gLibA-A7\tSM:gLibA-A7\tPL:ILLUMINA\tDS:Paired' /share/biocore/projects/Ralston_K_UCD/sh-analysis/Reference/AmoebaDB-46_EhistolyticaHM1IMSS_Genome.fasta ./01-cleaned/gLibA-A7_R1.fastq.gz ./01-cleaned/gLibA-A7_R2.fastq.gz | samtools view -o ./02-mapped/gLibA-A7.bam -
samtools sort --threads 110 ./02-mapped/gLibA-A7.bam -o ./03-sorted/gLibA-A7_sorted.bam
samtools idxstats ./03-sorted/gLibA-A7_sorted.bam > ./03-sorted/gLibA-A7_sorted.idxstats
samtools flagstat ./03-sorted/gLibA-A7_sorted.bam > ./03-sorted/gLibA-A7_sorted.flagstat
samtools stats ./03-sorted/gLibA-A7_sorted.bam > ./03-sorted/gLibA-A7_sorted.stats
echo C6-LibC2
bwa mem -t 110 -M -R '@RG\tID:C6-LibC2\tSM:C6-LibC2\tPL:ILLUMINA\tDS:Paired' /share/biocore/projects/Ralston_K_UCD/sh-analysis/Reference/AmoebaDB-46_EhistolyticaHM1IMSS_Genome.fasta ./01-cleaned/C6-LibC2_R1.fastq.gz ./01-cleaned/C6-LibC2_R2.fastq.gz | samtools view -o ./02-mapped/C6-LibC2.bam -
samtools sort --threads 110 ./02-mapped/C6-LibC2.bam -o ./03-sorted/C6-LibC2_sorted.bam
samtools idxstats ./03-sorted/C6-LibC2_sorted.bam > ./03-sorted/C6-LibC2_sorted.idxstats
samtools flagstat ./03-sorted/C6-LibC2_sorted.bam > ./03-sorted/C6-LibC2_sorted.flagstat
samtools stats ./03-sorted/C6-LibC2_sorted.bam > ./03-sorted/C6-LibC2_sorted.stats
echo B4-FC
bwa mem -t 110 -M -R '@RG\tID:B4-FC\tSM:B4-FC\tPL:ILLUMINA\tDS:Paired' /share/biocore/projects/Ralston_K_UCD/sh-analysis/Reference/AmoebaDB-46_EhistolyticaHM1IMSS_Genome.fasta ./01-cleaned/B4-FC_R1.fastq.gz ./01-cleaned/B4-FC_R2.fastq.gz | samtools view -o ./02-mapped/B4-FC.bam -
samtools sort --threads 110 ./02-mapped/B4-FC.bam -o ./03-sorted/B4-FC_sorted.bam
samtools idxstats ./03-sorted/B4-FC_sorted.bam > ./03-sorted/B4-FC_sorted.idxstats
samtools flagstat ./03-sorted/B4-FC_sorted.bam > ./03-sorted/B4-FC_sorted.flagstat
samtools stats ./03-sorted/B4-FC_sorted.bam > ./03-sorted/B4-FC_sorted.stats
echo F8_LibB3-2
bwa mem -t 110 -M -R '@RG\tID:F8_LibB3-2\tSM:F8_LibB3-2\tPL:ILLUMINA\tDS:Paired' /share/biocore/projects/Ralston_K_UCD/sh-analysis/Reference/AmoebaDB-46_EhistolyticaHM1IMSS_Genome.fasta ./01-cleaned/F8_LibB3-2_R1.fastq.gz ./01-cleaned/F8_LibB3-2_R2.fastq.gz | samtools view -o ./02-mapped/F8_LibB3-2.bam -
samtools sort --threads 110 ./02-mapped/F8_LibB3-2.bam -o ./03-sorted/F8_LibB3-2_sorted.bam
samtools idxstats ./03-sorted/F8_LibB3-2_sorted.bam > ./03-sorted/F8_LibB3-2_sorted.idxstats
samtools flagstat ./03-sorted/F8_LibB3-2_sorted.bam > ./03-sorted/F8_LibB3-2_sorted.flagstat
samtools stats ./03-sorted/F8_LibB3-2_sorted.bam > ./03-sorted/F8_LibB3-2_sorted.stats
echo F2_LibB1-2
bwa mem -t 110 -M -R '@RG\tID:F2_LibB1-2\tSM:F2_LibB1-2\tPL:ILLUMINA\tDS:Paired' /share/biocore/projects/Ralston_K_UCD/sh-analysis/Reference/AmoebaDB-46_EhistolyticaHM1IMSS_Genome.fasta ./01-cleaned/F2_LibB1-2_R1.fastq.gz ./01-cleaned/F2_LibB1-2_R2.fastq.gz | samtools view -o ./02-mapped/F2_LibB1-2.bam -
samtools sort --threads 110 ./02-mapped/F2_LibB1-2.bam -o ./03-sorted/F2_LibB1-2_sorted.bam
samtools idxstats ./03-sorted/F2_LibB1-2_sorted.bam > ./03-sorted/F2_LibB1-2_sorted.idxstats
samtools flagstat ./03-sorted/F2_LibB1-2_sorted.bam > ./03-sorted/F2_LibB1-2_sorted.flagstat
samtools stats ./03-sorted/F2_LibB1-2_sorted.bam > ./03-sorted/F2_LibB1-2_sorted.stats
echo C5-LibC2
bwa mem -t 110 -M -R '@RG\tID:C5-LibC2\tSM:C5-LibC2\tPL:ILLUMINA\tDS:Paired' /share/biocore/projects/Ralston_K_UCD/sh-analysis/Reference/AmoebaDB-46_EhistolyticaHM1IMSS_Genome.fasta ./01-cleaned/C5-LibC2_R1.fastq.gz ./01-cleaned/C5-LibC2_R2.fastq.gz | samtools view -o ./02-mapped/C5-LibC2.bam -
samtools sort --threads 110 ./02-mapped/C5-LibC2.bam -o ./03-sorted/C5-LibC2_sorted.bam
samtools idxstats ./03-sorted/C5-LibC2_sorted.bam > ./03-sorted/C5-LibC2_sorted.idxstats
samtools flagstat ./03-sorted/C5-LibC2_sorted.bam > ./03-sorted/C5-LibC2_sorted.flagstat
samtools stats ./03-sorted/C5-LibC2_sorted.bam > ./03-sorted/C5-LibC2_sorted.stats
echo D10_FB-1
bwa mem -t 110 -M -R '@RG\tID:D10_FB-1\tSM:D10_FB-1\tPL:ILLUMINA\tDS:Paired' /share/biocore/projects/Ralston_K_UCD/sh-analysis/Reference/AmoebaDB-46_EhistolyticaHM1IMSS_Genome.fasta ./01-cleaned/D10_FB-1_R1.fastq.gz ./01-cleaned/D10_FB-1_R2.fastq.gz | samtools view -o ./02-mapped/D10_FB-1.bam -
samtools sort --threads 110 ./02-mapped/D10_FB-1.bam -o ./03-sorted/D10_FB-1_sorted.bam
samtools idxstats ./03-sorted/D10_FB-1_sorted.bam > ./03-sorted/D10_FB-1_sorted.idxstats
samtools flagstat ./03-sorted/D10_FB-1_sorted.bam > ./03-sorted/D10_FB-1_sorted.flagstat
samtools stats ./03-sorted/D10_FB-1_sorted.bam > ./03-sorted/D10_FB-1_sorted.stats
echo D12_FB-3
bwa mem -t 110 -M -R '@RG\tID:D12_FB-3\tSM:D12_FB-3\tPL:ILLUMINA\tDS:Paired' /share/biocore/projects/Ralston_K_UCD/sh-analysis/Reference/AmoebaDB-46_EhistolyticaHM1IMSS_Genome.fasta ./01-cleaned/D12_FB-3_R1.fastq.gz ./01-cleaned/D12_FB-3_R2.fastq.gz | samtools view -o ./02-mapped/D12_FB-3.bam -
samtools sort --threads 110 ./02-mapped/D12_FB-3.bam -o ./03-sorted/D12_FB-3_sorted.bam
samtools idxstats ./03-sorted/D12_FB-3_sorted.bam > ./03-sorted/D12_FB-3_sorted.idxstats
samtools flagstat ./03-sorted/D12_FB-3_sorted.bam > ./03-sorted/D12_FB-3_sorted.flagstat
samtools stats ./03-sorted/D12_FB-3_sorted.bam > ./03-sorted/D12_FB-3_sorted.stats
echo F6_LibB2-3
bwa mem -t 110 -M -R '@RG\tID:F6_LibB2-3\tSM:F6_LibB2-3\tPL:ILLUMINA\tDS:Paired' /share/biocore/projects/Ralston_K_UCD/sh-analysis/Reference/AmoebaDB-46_EhistolyticaHM1IMSS_Genome.fasta ./01-cleaned/F6_LibB2-3_R1.fastq.gz ./01-cleaned/F6_LibB2-3_R2.fastq.gz | samtools view -o ./02-mapped/F6_LibB2-3.bam -
samtools sort --threads 110 ./02-mapped/F6_LibB2-3.bam -o ./03-sorted/F6_LibB2-3_sorted.bam
samtools idxstats ./03-sorted/F6_LibB2-3_sorted.bam > ./03-sorted/F6_LibB2-3_sorted.idxstats
samtools flagstat ./03-sorted/F6_LibB2-3_sorted.bam > ./03-sorted/F6_LibB2-3_sorted.flagstat
samtools stats ./03-sorted/F6_LibB2-3_sorted.bam > ./03-sorted/F6_LibB2-3_sorted.stats
echo gLibA-A6
bwa mem -t 110 -M -R '@RG\tID:gLibA-A6\tSM:gLibA-A6\tPL:ILLUMINA\tDS:Paired' /share/biocore/projects/Ralston_K_UCD/sh-analysis/Reference/AmoebaDB-46_EhistolyticaHM1IMSS_Genome.fasta ./01-cleaned/gLibA-A6_R1.fastq.gz ./01-cleaned/gLibA-A6_R2.fastq.gz | samtools view -o ./02-mapped/gLibA-A6.bam -
samtools sort --threads 110 ./02-mapped/gLibA-A6.bam -o ./03-sorted/gLibA-A6_sorted.bam
samtools idxstats ./03-sorted/gLibA-A6_sorted.bam > ./03-sorted/gLibA-A6_sorted.idxstats
samtools flagstat ./03-sorted/gLibA-A6_sorted.bam > ./03-sorted/gLibA-A6_sorted.flagstat
samtools stats ./03-sorted/gLibA-A6_sorted.bam > ./03-sorted/gLibA-A6_sorted.stats
echo B10-Lib18c
bwa mem -t 110 -M -R '@RG\tID:B10-Lib18c\tSM:B10-Lib18c\tPL:ILLUMINA\tDS:Paired' /share/biocore/projects/Ralston_K_UCD/sh-analysis/Reference/AmoebaDB-46_EhistolyticaHM1IMSS_Genome.fasta ./01-cleaned/B10-Lib18c_R1.fastq.gz ./01-cleaned/B10-Lib18c_R2.fastq.gz | samtools view -o ./02-mapped/B10-Lib18c.bam -
samtools sort --threads 110 ./02-mapped/B10-Lib18c.bam -o ./03-sorted/B10-Lib18c_sorted.bam
samtools idxstats ./03-sorted/B10-Lib18c_sorted.bam > ./03-sorted/B10-Lib18c_sorted.idxstats
samtools flagstat ./03-sorted/B10-Lib18c_sorted.bam > ./03-sorted/B10-Lib18c_sorted.flagstat
samtools stats ./03-sorted/B10-Lib18c_sorted.bam > ./03-sorted/B10-Lib18c_sorted.stats
echo B3-FA
bwa mem -t 110 -M -R '@RG\tID:B3-FA\tSM:B3-FA\tPL:ILLUMINA\tDS:Paired' /share/biocore/projects/Ralston_K_UCD/sh-analysis/Reference/AmoebaDB-46_EhistolyticaHM1IMSS_Genome.fasta ./01-cleaned/B3-FA_R1.fastq.gz ./01-cleaned/B3-FA_R2.fastq.gz | samtools view -o ./02-mapped/B3-FA.bam -
samtools sort --threads 110 ./02-mapped/B3-FA.bam -o ./03-sorted/B3-FA_sorted.bam
samtools idxstats ./03-sorted/B3-FA_sorted.bam > ./03-sorted/B3-FA_sorted.idxstats
samtools flagstat ./03-sorted/B3-FA_sorted.bam > ./03-sorted/B3-FA_sorted.flagstat
samtools stats ./03-sorted/B3-FA_sorted.bam > ./03-sorted/B3-FA_sorted.stats
echo F3_LibB1-3
bwa mem -t 110 -M -R '@RG\tID:F3_LibB1-3\tSM:F3_LibB1-3\tPL:ILLUMINA\tDS:Paired' /share/biocore/projects/Ralston_K_UCD/sh-analysis/Reference/AmoebaDB-46_EhistolyticaHM1IMSS_Genome.fasta ./01-cleaned/F3_LibB1-3_R1.fastq.gz ./01-cleaned/F3_LibB1-3_R2.fastq.gz | samtools view -o ./02-mapped/F3_LibB1-3.bam -
samtools sort --threads 110 ./02-mapped/F3_LibB1-3.bam -o ./03-sorted/F3_LibB1-3_sorted.bam
samtools idxstats ./03-sorted/F3_LibB1-3_sorted.bam > ./03-sorted/F3_LibB1-3_sorted.idxstats
samtools flagstat ./03-sorted/F3_LibB1-3_sorted.bam > ./03-sorted/F3_LibB1-3_sorted.flagstat
samtools stats ./03-sorted/F3_LibB1-3_sorted.bam > ./03-sorted/F3_LibB1-3_sorted.stats
echo F7_LibB3-1
bwa mem -t 110 -M -R '@RG\tID:F7_LibB3-1\tSM:F7_LibB3-1\tPL:ILLUMINA\tDS:Paired' /share/biocore/projects/Ralston_K_UCD/sh-analysis/Reference/AmoebaDB-46_EhistolyticaHM1IMSS_Genome.fasta ./01-cleaned/F7_LibB3-1_R1.fastq.gz ./01-cleaned/F7_LibB3-1_R2.fastq.gz | samtools view -o ./02-mapped/F7_LibB3-1.bam -
samtools sort --threads 110 ./02-mapped/F7_LibB3-1.bam -o ./03-sorted/F7_LibB3-1_sorted.bam
samtools idxstats ./03-sorted/F7_LibB3-1_sorted.bam > ./03-sorted/F7_LibB3-1_sorted.idxstats
samtools flagstat ./03-sorted/F7_LibB3-1_sorted.bam > ./03-sorted/F7_LibB3-1_sorted.flagstat
samtools stats ./03-sorted/F7_LibB3-1_sorted.bam > ./03-sorted/F7_LibB3-1_sorted.stats
echo B6-FC
bwa mem -t 110 -M -R '@RG\tID:B6-FC\tSM:B6-FC\tPL:ILLUMINA\tDS:Paired' /share/biocore/projects/Ralston_K_UCD/sh-analysis/Reference/AmoebaDB-46_EhistolyticaHM1IMSS_Genome.fasta ./01-cleaned/B6-FC_R1.fastq.gz ./01-cleaned/B6-FC_R2.fastq.gz | samtools view -o ./02-mapped/B6-FC.bam -
samtools sort --threads 110 ./02-mapped/B6-FC.bam -o ./03-sorted/B6-FC_sorted.bam
samtools idxstats ./03-sorted/B6-FC_sorted.bam > ./03-sorted/B6-FC_sorted.idxstats
samtools flagstat ./03-sorted/B6-FC_sorted.bam > ./03-sorted/B6-FC_sorted.flagstat
samtools stats ./03-sorted/B6-FC_sorted.bam > ./03-sorted/B6-FC_sorted.stats
echo C2-LibC2
bwa mem -t 110 -M -R '@RG\tID:C2-LibC2\tSM:C2-LibC2\tPL:ILLUMINA\tDS:Paired' /share/biocore/projects/Ralston_K_UCD/sh-analysis/Reference/AmoebaDB-46_EhistolyticaHM1IMSS_Genome.fasta ./01-cleaned/C2-LibC2_R1.fastq.gz ./01-cleaned/C2-LibC2_R2.fastq.gz | samtools view -o ./02-mapped/C2-LibC2.bam -
samtools sort --threads 110 ./02-mapped/C2-LibC2.bam -o ./03-sorted/C2-LibC2_sorted.bam
samtools idxstats ./03-sorted/C2-LibC2_sorted.bam > ./03-sorted/C2-LibC2_sorted.idxstats
samtools flagstat ./03-sorted/C2-LibC2_sorted.bam > ./03-sorted/C2-LibC2_sorted.flagstat
samtools stats ./03-sorted/C2-LibC2_sorted.bam > ./03-sorted/C2-LibC2_sorted.stats
echo B9-F18c
bwa mem -t 110 -M -R '@RG\tID:B9-F18c\tSM:B9-F18c\tPL:ILLUMINA\tDS:Paired' /share/biocore/projects/Ralston_K_UCD/sh-analysis/Reference/AmoebaDB-46_EhistolyticaHM1IMSS_Genome.fasta ./01-cleaned/B9-F18c_R1.fastq.gz ./01-cleaned/B9-F18c_R2.fastq.gz | samtools view -o ./02-mapped/B9-F18c.bam -
samtools sort --threads 110 ./02-mapped/B9-F18c.bam -o ./03-sorted/B9-F18c_sorted.bam
samtools idxstats ./03-sorted/B9-F18c_sorted.bam > ./03-sorted/B9-F18c_sorted.idxstats
samtools flagstat ./03-sorted/B9-F18c_sorted.bam > ./03-sorted/B9-F18c_sorted.flagstat
samtools stats ./03-sorted/B9-F18c_sorted.bam > ./03-sorted/B9-F18c_sorted.stats
echo C4-LibC2
bwa mem -t 110 -M -R '@RG\tID:C4-LibC2\tSM:C4-LibC2\tPL:ILLUMINA\tDS:Paired' /share/biocore/projects/Ralston_K_UCD/sh-analysis/Reference/AmoebaDB-46_EhistolyticaHM1IMSS_Genome.fasta ./01-cleaned/C4-LibC2_R1.fastq.gz ./01-cleaned/C4-LibC2_R2.fastq.gz | samtools view -o ./02-mapped/C4-LibC2.bam -
samtools sort --threads 110 ./02-mapped/C4-LibC2.bam -o ./03-sorted/C4-LibC2_sorted.bam
samtools idxstats ./03-sorted/C4-LibC2_sorted.bam > ./03-sorted/C4-LibC2_sorted.idxstats
samtools flagstat ./03-sorted/C4-LibC2_sorted.bam > ./03-sorted/C4-LibC2_sorted.flagstat
samtools stats ./03-sorted/C4-LibC2_sorted.bam > ./03-sorted/C4-LibC2_sorted.stats
echo B1-FA
bwa mem -t 110 -M -R '@RG\tID:B1-FA\tSM:B1-FA\tPL:ILLUMINA\tDS:Paired' /share/biocore/projects/Ralston_K_UCD/sh-analysis/Reference/AmoebaDB-46_EhistolyticaHM1IMSS_Genome.fasta ./01-cleaned/B1-FA_R1.fastq.gz ./01-cleaned/B1-FA_R2.fastq.gz | samtools view -o ./02-mapped/B1-FA.bam -
samtools sort --threads 110 ./02-mapped/B1-FA.bam -o ./03-sorted/B1-FA_sorted.bam
samtools idxstats ./03-sorted/B1-FA_sorted.bam > ./03-sorted/B1-FA_sorted.idxstats
samtools flagstat ./03-sorted/B1-FA_sorted.bam > ./03-sorted/B1-FA_sorted.flagstat
samtools stats ./03-sorted/B1-FA_sorted.bam > ./03-sorted/B1-FA_sorted.stats
echo F12_LibB4-3
bwa mem -t 110 -M -R '@RG\tID:F12_LibB4-3\tSM:F12_LibB4-3\tPL:ILLUMINA\tDS:Paired' /share/biocore/projects/Ralston_K_UCD/sh-analysis/Reference/AmoebaDB-46_EhistolyticaHM1IMSS_Genome.fasta ./01-cleaned/F12_LibB4-3_R1.fastq.gz ./01-cleaned/F12_LibB4-3_R2.fastq.gz | samtools view -o ./02-mapped/F12_LibB4-3.bam -
samtools sort --threads 110 ./02-mapped/F12_LibB4-3.bam -o ./03-sorted/F12_LibB4-3_sorted.bam
samtools idxstats ./03-sorted/F12_LibB4-3_sorted.bam > ./03-sorted/F12_LibB4-3_sorted.idxstats
samtools flagstat ./03-sorted/F12_LibB4-3_sorted.bam > ./03-sorted/F12_LibB4-3_sorted.flagstat
samtools stats ./03-sorted/F12_LibB4-3_sorted.bam > ./03-sorted/F12_LibB4-3_sorted.stats
echo C7-LibC3
bwa mem -t 110 -M -R '@RG\tID:C7-LibC3\tSM:C7-LibC3\tPL:ILLUMINA\tDS:Paired' /share/biocore/projects/Ralston_K_UCD/sh-analysis/Reference/AmoebaDB-46_EhistolyticaHM1IMSS_Genome.fasta ./01-cleaned/C7-LibC3_R1.fastq.gz ./01-cleaned/C7-LibC3_R2.fastq.gz | samtools view -o ./02-mapped/C7-LibC3.bam -
samtools sort --threads 110 ./02-mapped/C7-LibC3.bam -o ./03-sorted/C7-LibC3_sorted.bam
samtools idxstats ./03-sorted/C7-LibC3_sorted.bam > ./03-sorted/C7-LibC3_sorted.idxstats
samtools flagstat ./03-sorted/C7-LibC3_sorted.bam > ./03-sorted/C7-LibC3_sorted.flagstat
samtools stats ./03-sorted/C7-LibC3_sorted.bam > ./03-sorted/C7-LibC3_sorted.stats
echo F9_LibB3-3
bwa mem -t 110 -M -R '@RG\tID:F9_LibB3-3\tSM:F9_LibB3-3\tPL:ILLUMINA\tDS:Paired' /share/biocore/projects/Ralston_K_UCD/sh-analysis/Reference/AmoebaDB-46_EhistolyticaHM1IMSS_Genome.fasta ./01-cleaned/F9_LibB3-3_R1.fastq.gz ./01-cleaned/F9_LibB3-3_R2.fastq.gz | samtools view -o ./02-mapped/F9_LibB3-3.bam -
samtools sort --threads 110 ./02-mapped/F9_LibB3-3.bam -o ./03-sorted/F9_LibB3-3_sorted.bam
samtools idxstats ./03-sorted/F9_LibB3-3_sorted.bam > ./03-sorted/F9_LibB3-3_sorted.idxstats
samtools flagstat ./03-sorted/F9_LibB3-3_sorted.bam > ./03-sorted/F9_LibB3-3_sorted.flagstat
samtools stats ./03-sorted/F9_LibB3-3_sorted.bam > ./03-sorted/F9_LibB3-3_sorted.stats
echo B12-Lib18c
bwa mem -t 110 -M -R '@RG\tID:B12-Lib18c\tSM:B12-Lib18c\tPL:ILLUMINA\tDS:Paired' /share/biocore/projects/Ralston_K_UCD/sh-analysis/Reference/AmoebaDB-46_EhistolyticaHM1IMSS_Genome.fasta ./01-cleaned/B12-Lib18c_R1.fastq.gz ./01-cleaned/B12-Lib18c_R2.fastq.gz | samtools view -o ./02-mapped/B12-Lib18c.bam -
samtools sort --threads 110 ./02-mapped/B12-Lib18c.bam -o ./03-sorted/B12-Lib18c_sorted.bam
samtools idxstats ./03-sorted/B12-Lib18c_sorted.bam > ./03-sorted/B12-Lib18c_sorted.idxstats
samtools flagstat ./03-sorted/B12-Lib18c_sorted.bam > ./03-sorted/B12-Lib18c_sorted.flagstat
samtools stats ./03-sorted/B12-Lib18c_sorted.bam > ./03-sorted/B12-Lib18c_sorted.stats
echo B8-F18c
bwa mem -t 110 -M -R '@RG\tID:B8-F18c\tSM:B8-F18c\tPL:ILLUMINA\tDS:Paired' /share/biocore/projects/Ralston_K_UCD/sh-analysis/Reference/AmoebaDB-46_EhistolyticaHM1IMSS_Genome.fasta ./01-cleaned/B8-F18c_R1.fastq.gz ./01-cleaned/B8-F18c_R2.fastq.gz | samtools view -o ./02-mapped/B8-F18c.bam -
samtools sort --threads 110 ./02-mapped/B8-F18c.bam -o ./03-sorted/B8-F18c_sorted.bam
samtools idxstats ./03-sorted/B8-F18c_sorted.bam > ./03-sorted/B8-F18c_sorted.idxstats
samtools flagstat ./03-sorted/B8-F18c_sorted.bam > ./03-sorted/B8-F18c_sorted.flagstat
samtools stats ./03-sorted/B8-F18c_sorted.bam > ./03-sorted/B8-F18c_sorted.stats
echo C1-LibC1
bwa mem -t 110 -M -R '@RG\tID:C1-LibC1\tSM:C1-LibC1\tPL:ILLUMINA\tDS:Paired' /share/biocore/projects/Ralston_K_UCD/sh-analysis/Reference/AmoebaDB-46_EhistolyticaHM1IMSS_Genome.fasta ./01-cleaned/C1-LibC1_R1.fastq.gz ./01-cleaned/C1-LibC1_R2.fastq.gz | samtools view -o ./02-mapped/C1-LibC1.bam -
samtools sort --threads 110 ./02-mapped/C1-LibC1.bam -o ./03-sorted/C1-LibC1_sorted.bam
samtools idxstats ./03-sorted/C1-LibC1_sorted.bam > ./03-sorted/C1-LibC1_sorted.idxstats
samtools flagstat ./03-sorted/C1-LibC1_sorted.bam > ./03-sorted/C1-LibC1_sorted.flagstat
samtools stats ./03-sorted/C1-LibC1_sorted.bam > ./03-sorted/C1-LibC1_sorted.stats
