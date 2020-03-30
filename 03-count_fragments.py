import os
import sys
import traceback
import time
import signal
import re
from collections import Counter
from itertools import groupby

insam = sys.stdin
outprefix = sys.argv[1]
try:
    count = dict()

    read_profile = open(outprefix + '_counts_profile.txt', 'w')
    # M00384:224:000000000-CR6C9:1:2109:12973:12095   99      DS571145        4155    60      6S49M2D27M1D68M =       4407    401
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

    i = 0
    lasttime = time.time()

    for line in insam:
        if line[0] != "@":  # header line
            i += 1

            line2 = line.strip().split()
            flag = int(line2[1])
            # Secondary alignment
            if (flag & 0x100):
                continue

            # Handle SE:
            # mapped SE reads have 0x1 set to 0, and 0x4 (third bit) set to 1 if mapped
            if (not (flag & 0x1)) and not (flag & 0x4) and int(line2[4]) >= 20:  # MAPPED
                if line2[2] not in count:
                    count[line2[2]] = Counter()
                if (flag & 0x10):
                    count[line2[2]][line2[3] + '-'] += 1
                else:
                    count[line2[2]][line2[3] + '+'] += 1
                continue
            # Handle PE:
            # logic:  0x1 = multiple segments in sequencing,   0x4 = segment unmapped,  0x8 = next segment unmapped
            if (flag & 0x1) and (flag & 0x40) and ((not (flag & 0x4)) and (not (flag & 0x8))) and (flag & 0x2) and (int(line2[4]) >=20):  # PE READ
                if line2[2] not in count:
                    count[line2[2]] = Counter()
                if (flag & 0x10):
                    count[line2[2]][line2[3] + '-'] += 1
                else:
                    count[line2[2]][line2[3] + '+'] += 1
                continue


    for contig in count.keys():
        for site in count[contig].keys():
            read_profile.write("%s\t%s\t%s\n" % (contig, site, count[contig][site]))
    read_profile.close()

except (KeyboardInterrupt, SystemExit):
    sys.stderr.write("%s unexpectedly terminated\n" % (__name__))
except:
    sys.stderr.write("A fatal error was encountered.\n")

