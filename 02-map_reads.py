import os
from glob import glob
import re

outf = open("02-map_reads.sh", 'w')
os.system('mkdir -p 02-mapped')
os.system('mkdir -p 03-sorted')
ref = '/share/biocore/projects/Ralston_K_UCD/sh-analysis/Reference/AmoebaDB-46_EhistolyticaHM1IMSS_Genome.fasta'


for r1 in glob("./01-cleaned/*_R1.fastq.gz"):
    r2 = r1.replace("_R1", "_R2")
    s = re.sub("_R1.*.gz$", '', r1.strip().split('/')[2])
    outf.write("echo " + s + '\n')
    cmd = "bwa mem -t 110 -M -R '@RG\\tID:%s\\tSM:%s\\tPL:ILLUMINA\\tDS:Paired' %s %s %s |"% (s, s, ref, r1, r2)
    cmd += " samtools view -o ./02-mapped/%s.bam -" % s
    outf.write(cmd + '\n')
    cmd = "samtools sort --threads 110 ./02-mapped/%s.bam -o ./03-sorted/%s_sorted.bam" % (s, s)
    outf.write(cmd + '\n')
    cmd = "samtools idxstats ./03-sorted/%s_sorted.bam > ./03-sorted/%s_sorted.idxstats" % (s, s)
    outf.write(cmd + '\n')
    cmd = "samtools flagstat ./03-sorted/%s_sorted.bam > ./03-sorted/%s_sorted.flagstat" % (s, s)
    outf.write(cmd + '\n')
    cmd = "samtools stats ./03-sorted/%s_sorted.bam > ./03-sorted/%s_sorted.stats" % (s, s)
    outf.write(cmd + '\n')

outf.close()


# call="bwa mem -t ${MAPTHREADS} \
#   -R '@RG\tID:${sample}\tSM:${sample}\tPL:ILLUMINA\tDS:Paired' \
#   ${mapfasta} ${se} | \
#   samtools sort -m 768M --threads ${SORTTHREADS} -o ${output}-se -"


# mapfasta=./Reference/AmoebaDB-46_EhistolyticaHM1IMSS_Genome.fasta

# call="samtools index -@ ${THREADS} ${output}"
# echo $call
# eval $call

# call="samtools idxstats ${output} > ${output}.idxstats"
# echo $call
# eval $call

# call="samtools flagstat -@ ${THREADS} ${output} > ${output}.flagstat"
# echo $call
# eval $call

# call="samtools stats -@ ${THREADS} ${output} > ${output}.stats"
