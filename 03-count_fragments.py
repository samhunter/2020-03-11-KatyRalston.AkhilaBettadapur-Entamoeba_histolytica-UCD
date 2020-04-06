import os
#import sys
#import traceback
import time
#import signal
#import re
from collections import Counter
#from itertools import groupby
import subprocess
import csv
from glob import glob

'''

Objective 1:
    Characterize library complexity for each sample. How many unique fragments are there?

Objective 2:
    Identify "targeted" genes. These are genes where reads map in forward orientation w/rt
    the transcript and overlap by at least 27bp.

Objective 3:
    Compare complexity, coverage, targeted genes, etc across preps.

Output:
    Fragments:
        R1 contig, R1 start, R1 orientation, R2 contig, R2 start, R2 orientation, samples....

    Coverage:
        if mapped in the same contig:
            contig (R1|R2) max left position, (R1|R2) max right position, R1 orientation, samples

    seq R1_start    R2_Start     


Essentially, a read targets a gene if at least 27bp maps in the forward orientation with respect to the transcript.

Case 1: R1 and R2 mapped to same contig
    Forward: Start = POS, End = POS + TLEN
    Reverse: POS - TLEN 

Case 2: R1 mapped to one contig, R2 mapped to another
    Forward


'''
os.system('mkdir -p 03-counts')
# M00384:224:000000000-CR6C9:1:2109:12973:12095   99      DS571145        4155    60      6S49M2D27M1D68M =       4407    401
# https://samtools.github.io/hts-specs/SAMv1.pdf
# 0x1 template having multiple segments in sequencing
# 0x2 each segment properly aligned according to the aligner
# 0x4 segment unmapped
# 0x8 next segment in the template unmapped
# 0x10 SEQ being reverse complemented
# 0x20 SEQ of the next segment in the template being reversed
# 0x40 the first segment in the template
# 0x80 the last segment in the template
# 0x100 secondary alignment
# 0x200 not passing quality controls
# 0x400 PCR or optical duplicate

fragments = {}  # key is rname_r1pos_rnext_r2pos_orientation
bams = glob("./02-mapped/*.bam")
for bam in bams:
    i = 0
    start = time.time()
    cmd = "samtools view " + bam
    h = subprocess.Popen(cmd.split(), stdout=subprocess.PIPE, stderr=subprocess.PIPE, universal_newlines=True)
    s = bam.split('/')[-1].replace('.bam', '')
    print("Processing file ", bam)
    for line in h.stdout:
        store = False
        if line[0] != "@" and len(line.strip().split()) > 2:
            i += 1
            line2 = line.strip().split()
            flag = int(line2[1])
            rname = r1pos = rnext = r2pos = r1orientation = None
            #Handle PE:
            #logic:  0x1 = multiple segments in sequencing, 0x4 = segment unmapped,  0x8 = next segment unmapped
            # Get fragments, where both mates are mapped to one or more contigs:
            if ((flag & 0x1) and not (flag & 0x4) and not (flag & 0x8) and not (flag & 0x100) and (flag & 0x40)):
                #if (flag & 0x40):  # is this PE1 (first segment in template)
                #PE1 read, check that PE2 is in dict and write out
                qname = line2[0].split("#")[0]
                rname = line2[2]
                r1pos = line2[3]
                r1mapq = line2[4]
                if (flag & 0x10): r1orientation ='-'
                else: r1orientation ='+'                
                if line2[6] == '=': rnext = rname
                else: rnext = line2[6]
                r2pos = line2[7]
                store = True
            # Note that there is a little bit of a problem where soft-clipped reads at the edge of contigs are not
            # counted correctly, map position is always 1 for these.
            # Get fragments, where only R1 is mapped but R2 is not:
            elif ((flag & 0x1) and not (flag & 0x4) and (flag & 0x8) and not (flag & 0x100) and (flag & 0x40)):
                rname = line2[2]
                r1pos = line2[3]
                r1mapq = line2[4]
                if (flag & 0x10): r1orientation ='-'
                else: r1orientation ='+'                
                rnext = "Unmapped"
                r2pos = '0'
                store = True
            #Finally get reads where R2 is mapped, but R1 is not:
            # orientation has to be flipped here
            elif ((flag & 0x1) and not (flag & 0x4) and (flag & 0x8) and not (flag & 0x100) and (flag & 0x80)):
                rname = line2[2]
                r1pos = '0'
                r2mapq = line2[4]
                if (flag & 0x10): r1orientation ='+'
                else: r1orientation ='-'                
                rnext = "Unmapped"
                r2pos = line2[3]
                store = True
            if store:
                key = '_'.join([rname, r1pos, rnext, r2pos, r1orientation])
                if key not in fragments:
                    fragments[key] = Counter()
                fragments[key][s] += 1
    txt = "Finished processing " + bam + " %s records, %s/second, total keys: %s" % (i, i/(time.time() - start), len(fragments))
    txt += " keys/rec %s" % round(len(fragments)/i, 3)
    print(txt)


## Write output in a couple of formats:
outf = open("./03-counts/03_fragments_profile.tsv", 'w')
fieldnames = ["R1contig", "R1start", "R2contig", "R2start", "orientation"] + list(map(lambda x: x.split('/')[-1].replace(".bam", ''), bams))
outfw = csv.DictWriter(outf, delimiter='\t', fieldnames=fieldnames)
outfw.writeheader()

for key in fragments.keys():
    key2 = key.split('_')
    out = {}
    out['R1contig'] = key2[0]
    out['R1start'] = key2[1]
    out['R2contig'] = key2[2]
    out['R2start'] = key2[3]
    out['orientation'] = key2[4]
    for s in map(lambda x: x.split('/')[-1].replace(".bam", ''), bams):
        out[s] = fragments[key][s]
    outfw.writerow(out)
    outf.flush()
outf.close()
