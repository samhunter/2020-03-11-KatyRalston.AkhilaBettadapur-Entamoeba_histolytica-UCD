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
from operator import itemgetter
from intervaltree import Interval, IntervalTree
import re

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

Notes:
    1) Map position is always furthest left (5', lowest) whether reads are mapped in forward or RC. 
    2) CIGAR string is always starts furthest left (5' lowest)
    3) Map position starts at the first match, so soft clipped bases don't count
    4) R1 consistently has 3bp soft clipped at the start of the read (5' end)
    5) R2 consistently has 2 bp soft clipped at the start of the read (5' end)
    6) If R1 is mapped forward then interval is (R1_pos: R2_pos + readlen)
        If R1 is mapped reverse, then interval is (R2_pos : R1_pos + readlen)
    7) Real intervals should only be defined when both reads map, and softclipped bases are less than 

IntervalTree: https://github.com/chaimleib/intervaltree
m = IntervalTree()
n = Interval(200,600)
m.add(n)
m[1:5] = Counter()

ivs = [(1, 2), (4, 7), (5, 9)]
t2 = IntervalTree(Interval(iv) for iv in ivs)



Pseudo Code:
1) Build an interval tree with all legit looking intervals in a sample, this will be output as the sample-specific BED.
2) In a master list containing all intervals, store counts, this is just a normal dictionary
    -ONLY insert legit intervals into the master list, count duplicate legit intervals as you go
3) Keep all of the read pairs that map to single contig but don't look quite like legit intervals.
    -At the end of the bam, try to assign the crappy read pairs to intervals in the interval tree using the Interval
    envelop() funcion. Increment the count in the mater list for matches.
4) Write out BED file for each sample.
5) Write out master list as contig, start, stop, orientation, sample counts

Data Structures:
master_list {contig:{"-":IntervalTree(), "+":IntervalTree()}} - stores all unique intervals acumulated for all bams
sample_list {"sampleID":{"contig":{"-":IntervalTree(), "+":IntervalTree()}}}
fragments = {"contig_start_stop_orientation":Counter()} # used for counting legit inserts only 

rname = contig

For each read-sorted BAM:
A) Create interval lists for each contig
    1) Parse through each line of the read-sorted input.
    2) For each read pair, decide if it is good
        -a good pair has both reads mapped to the same contig and:
            Forward CIGAR: R1 starts with between 0 and 3 soft clipped bases, R2 ends with 0-3S
            Reverse CIGAR: R2 starts with 0-3S, R1 ends with 0-3S.
    3) If a read is a "good pair" check it against the interval list for that contig and orientation
        -
output:
    1) SAF formatted file (GeneID\tChr\tStart\tEnd\tStrand) for each input bam containing all detected intervals
    2) tsv file with counts for all samples
    
FB - PLASMID F1_LibB1-1_DS571146 - DS571146 position 19045 is a nice tricky example.
'''
os.system('mkdir -p 03-counts')

readlen = 151
minmatches = 146
maxinsert = 1500

## Functions ###
pattern = re.compile('([MIDNSHPX=])')

def count_matches(cigar):
    values = pattern.split(cigar)[:-1]
    matches = 0
    for i in range(1, len(values), 2):
        if values[i] == 'M':
            matches += int(values[i-1])
    return matches

def check_cigar(cigars):
    # Cigars make the read...
    # This enforces a 3bp softclip on each end of the fragment
    c1 = c2 = False
    # Cigar1
    values = pattern.split(cigars[0])[:-1]
    if values[1] == 'M': 
        c1 = True
        c1offset = 0
    elif values[1] == 'S' and values[0] in ('1','2', '3', '4'): 
        c1 = True
        #c1offset = 3 - int(values[0])
        c1offset = int(values[0])
    else:
        #print(cigars)
        c1 = False
        c1offset = 0
    #Cigar2 must end with 0-3 soft clips:
    values = pattern.split(cigars[1])[:-1]
    if values[-1] == 'M': 
        c2 = True
        c2offset = 0
    elif values[-1] == 'S' and values[-2] in ('1', '2', '3', '4'):
        c2 = True
        c2offset = int(values[-2]) #3 - int(values[-2])
    else:
        #print(cigars)
        c2 = False
        c2offset = 0
    return({'okay':c1 & c2, 'c1offset':c1offset, 'c2offset':c2offset})

def process_pair(read):
    #get data and create interval etc
    flag = int(read['R1'][1])
    r1pos = int(read['R1'][3])
    r2pos = int(read['R2'][3])
    r1matches = count_matches(read['R1'][5])
    r2matches = count_matches(read['R2'][5])
    tlen = abs(int(read['R1'][8]))
    # check quality of read pairs, build and return object
    retval = {}
    retval['interval'] = True 
    retval['discard'] = False
    if (flag & 0x10): 
        r1orientation ='-'
        cc = check_cigar((read['R2'][5], read['R1'][5]))
        if not cc['okay']: retval['interval'] = False
        start = r2pos - cc['c1offset']
        stop = start + tlen + cc['c1offset'] + cc['c2offset']
    else: 
        r1orientation ='+'
        cc = check_cigar((read['R1'][5], read['R2'][5]))
        if not cc['okay']: retval['interval'] = False
        start = r1pos - cc['c1offset']
        stop = start + tlen + cc['c1offset'] + cc['c2offset']
    if r1matches < minmatches or r2matches < minmatches:
        retval['interval'] = False
    retval['contig'] = read['R1'][2]
    retval['start'] = start
    retval['stop'] = stop
    retval['orientation'] = r1orientation
    # Discard reads that are not proper pairs
    if stop < start or (stop - start > maxinsert):
        retval = None
    return(retval)


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

bams = glob("./02-mapped/*.bam")
# intervals is a dict with contig as key, each contig is a dict with [+,-] as keys, containing intervaltrees
# each interval within the intervaltree contains a counter with counts by sample for that interval
fragments = {}  # key is contig_start_stop_orientation, values are Counters
counters = {} # holds per-sample statistics for later reporting
for bam in bams:
    starttime = time.time()
    cmd = "samtools view " + bam
    h = subprocess.Popen(cmd.split(), stdout=subprocess.PIPE, stderr=subprocess.PIPE, universal_newlines=True)
    s = bam.split('/')[-1].replace('.bam', '')
    print("Processing file ", bam)
    reads = {}  # store reads temporarily
    sampleIntervals = {} # temporarily store intervals for this sample only
    counters[s] = Counter()
    #sample_intervals = {} # {"sampleID":{"contig":{"-":IntervalTree(), "+":IntervalTree()}}}
    junkyPairs = Counter()
    for line in h.stdout:
        store = False
        retval = None
        if line[0] != "@" and len(line.strip().split()) > 2:
            counters[s]["lines"] += 1
            line2 = line.strip().split()
            # Skip if mate is mapped to another contig:
            if line2[6] != '=' and line2[2] != line[6]: 
                counters[s]['multicontigs'] += 1
                continue
            qname = line2[0].strip()  # readID
            rname = line2[2]  # reference sequence name (contig)
            flag = int(line2[1])
            #rname = r1pos = rnext = r2pos = r1orientation = None
            # if both mates are mapped and not secondary alignment:
            if (flag & 0x1) and not (flag & 0x4) and not (flag & 0x8) and not (flag & 0x100):
                counters[s]['mappedPairs'] += 1
                if flag & 0x40:  # Read1
                    #Store read1 for future processing:
                    counters[s]['R1proper'] += 1
                    if qname not in reads: 
                        reads[qname] = {}
                        reads[qname]['R1'] = line2
                    else:
                        counters[s]['r1order'] +=1
                        print("read1 %s out of order" % qname)
                        continue
                # R2 where both mates are mapped to one or more contigs:
                elif flag & 0x80:  # Read2
                    counters[s]['R2proper'] += 1
                    if qname in reads:
                        reads[qname]['R2'] = line2
                        retval = process_pair(reads[qname])
                        del reads[qname]
                    else:
                        print("read2 %s out of order" % qname)
                        counters[s]['r2order'] +=1
                        continue
                # TODO: refactor the following, it is ugly and could be much cleaner
                # Finally deal with results and store values:
                if retval is not None:
                    rname = retval['contig']
                    orientation = retval['orientation']
                    start = retval['start']
                    stop = retval['stop']
                    k = '_'.join( (rname, str(start), str(stop), orientation))
                    if retval['interval'] is False: # Case 1, junky read, save for later
                        counters[s]['junkyPair'] += 1
                        junkyPairs[k] += 1
                        store = False
                    else:  # Case 2, good pair, store/count interval
                        # Count in all-samples counter:
                        if k not in fragments:                            
                            fragments[k] = Counter()
                        fragments[k][s] += 1
                        # Add to sample intervals:
                        if rname not in sampleIntervals:
                            sampleIntervals[rname] = IntervalTree()
                        sampleIntervals[rname].add(Interval(start,stop, orientation))
                        retval = None
            else:
                counters[s]['discard'] += 1
                    
    # Write sample SAF from sampleIntervals (for Rsubread):
    outf = open(f"./03-counts/{s}.SAF", 'w')
    fieldnames = ["GeneID", "Chr", "Start", "End", "Strand"]
    outfw = csv.DictWriter(outf, delimiter='\t', fieldnames=fieldnames)
    outfw.writeheader()
    gene = 0
    for contig in sorted(sampleIntervals.keys()):
        for ito in sorted(sampleIntervals[contig]):
            gene += 1
            out = {}
            out['GeneID'] = s + '.' + str(gene)
            out['Chr'] = contig
            out['Start'] = ito.begin
            out['End'] = ito.end
            out['Strand'] = ito.data
            outfw.writerow(out)
            counters[s]['fragments'] += 1
    outf.flush()
    outf.close()

    # Write sample GFF from sampleIntervals (for visualization):
    outf = open(f"./03-counts/{s}.gff", 'w')
    fieldnames = ["seqname", "source", "feature", "start", "end", "score", "strand", "frame", "attribute"]
    outfw = csv.DictWriter(outf, delimiter='\t', fieldnames=fieldnames, quoting=csv.QUOTE_NONE, escapechar='')
    #outfw.writeheader() # GFF has no header
    gene = 0
    for contig in sorted(sampleIntervals.keys()):
        for ito in sorted(sampleIntervals[contig]):
            gene += 1
            out = {}
            out['seqname'] = contig
            out['source'] = 'NA'
            out['feature'] = 'interval'
            out['start'] = ito.begin
            out['end'] = ito.end
            out['score'] = '.'
            out['strand'] = ito.data
            out['frame'] = 0
            out['attribute'] = s + "." + str(gene)
            outfw.writerow(out)
    outf.flush()
    outf.close()

    # Process all of the crappy stored reads for counts:
    for k,v in junkyPairs.items():
        # Find overlaps, increment counters
        contig, start, stop, orientation = k.split('_')
        start = int(start)
        stop = int(stop)
        best = {'interval':None, "overlap":0}
        if contig not in sampleIntervals: continue
        for frag in sampleIntervals[contig][start:stop]:
            if frag.data == orientation:
                overlap = len(set(range(frag.begin, frag.end)).intersection(set(range(start,stop))))
                if overlap > best['overlap']:
                    best['interval'] = frag
                    best['overlap'] = overlap
        if best['interval'] is not None:
            k = '_'.join( (contig, str(best['interval'].begin), str(best['interval'].end), orientation))
            fragments[k][s] += 1

    txt = f"{bam.split('/')[-1]}"
    for k in counters[s].keys():
        txt += f"\t{k}:{counters[s][k]}"
    txt += f"\tlines/s:{round(counters[s]['lines']/(time.time() - starttime),1)}"
    print(txt)

## Write total fragment counts out in tsv:
outf = open("./03-counts/03_fragments_profile.tsv", 'w')
fieldnames = ["contig", "start", "stop", "orientation"] + list(map(lambda x: x.split('/')[-1].replace(".bam", ''), bams))
outfw = csv.DictWriter(outf, delimiter='\t', fieldnames=fieldnames)
outfw.writeheader()

for key in fragments.keys():
    key2 = key.split('_')
    out = {}
    out['contig'] = key2[0]
    out['start'] = key2[1]
    out['stop'] = key2[2]
    out['orientation'] = key2[3]
    for s in map(lambda x: x.split('/')[-1].replace(".bam", ''), bams):
        out[s] = fragments[key][s]
    outfw.writerow(out)
outf.flush()
outf.close()

## Write out counters
outf = open("./03-counts/sample_statistics.tsv", 'w')
fieldnames = ['sample'] + list(counters[s].keys())
outfw = csv.DictWriter(outf, delimiter='\t', fieldnames=fieldnames)
outfw.writeheader()

for s in counters.keys():
    out = {}
    out['sample'] = s
    for k in counters[s].keys():
        out[k] = counters[s][k]
    outfw.writerow(out)
outf.flush()
outf.close()
