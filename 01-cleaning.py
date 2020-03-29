from glob import glob
import re
import os

cleaning = open("01-cleaning_commands.sh", 'w')

os.system("mkdir -p 01-cleaned")

for r1 in glob("./00-RawData/*_R1_*.fastq.gz"):
    #s = "_".join(r1.split('/')[2].split("_")[0:2])
    #s = r1.split('/')[-1].split('_')[0]
    s = re.findall(r'(^.*)_S.*_L.*', r1.split('/')[-1])[0]
    r2 = r1.replace("_R1", "_R2")
    log = "./01-cleaned/" + s + "_stats.log"
    cmd = "hts_Stats -L " + log + " -1 " + r1 + " -2 " + r2 + " | " # record stats for raw reads
    cmd += "hts_SeqScreener -k 12 -AL " + log + " | "  # screen for phix  
    #cmd += "hts_SuperDeduper -e 100000 -AL " + log + " | " # remove PCR duplicates, record saturation
    #cmd += "hts_SeqScreener -s rRNA.fasta -r -O -A -L " + log + " | " # count rRNA reads
    cmd += "hts_AdapterTrimmer -m 30 -AL " + log + " | " # trim adapters, throw out short fragements
    #cmd += 'hts_NTrimmer -n -m 100 -AL ' + log + " | " # trim reads with Ns, throw out short fragments
    #cmd += 'hts_QWindowTrim -m 100 -w 1 -q 35 -AL ' + log + " | "
    #cmd += "hts_Stats -AL " + log + " -f ./01-cleaned/" + s
    #cmd += "hts_CutTrim -a 40 -m 90 -S -A -L " + log + " -O | "  # Cut off probe
    #cmd = "hts_NTrimmer -n -m 100 -L " + log + " -1 " + r1 + " -2 " + r2 + " -O |"
    #cmd += "hts_Overlapper -m 300 -n -S -o 15 -e 0.2 -A -L " + log + " -O |"
    cmd += "hts_SeqScreener -AL " + log + " -k 15 -x .01 --seq adapters.fa -f ./01-cleaned/" + s  # adapters
    cleaning.write(cmd+'\n')

cleaning.close()
