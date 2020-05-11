---
title: "Fragment Analysis: Entamoeba histolytica knockout libraries"
author: "Sam Hunter"
date: "11 May, 2020"
output: 
    html_document:
        keep_md: yes
fig_width: 8
fig_height: 10
---










## Figure 0.0
How many fragments are there per sample?

<img src="Figs/p001_fragmentsPerSample-1.png" style="display: block; margin: auto;" />

## Figure 0.1 
Were samples sequenced deeply enough to detect all fragments?



<img src="Figs/p002_saturationPlot1-1.png" style="display: block; margin: auto;" />

<img src="Figs/p003_saturationPlot2-1.png" style="display: block; margin: auto;" />


## Figure 1
### Q) Was there bias in the genomic fragmentation or in the fragments that were cloned into the library plasmid?

<img src="Figs/p004_basecomposition-1.png" style="display: block; margin: auto;" />

<img src="Figs/p005_dinucleotideComposition-1.png" style="display: block; margin: auto;" />

## Figure 2
## Q: Was there bias in PCR/sequencing analysis?

There are 2.5 million fragments identified, this is too many for a heatmap (pheatmap gives an error), 
so a boxplot might work. There is clearly a lot of variability in read counts per fragment.

<img src="Figs/p006_readsPerFragment-1.png" style="display: block; margin: auto;" />

### Figure 2.1
### Another boxplot with only samples from the Final set
<img src="Figs/p007_readsPerFragment2-1.png" style="display: block; margin: auto;" />


### Figure 2.2
An attempt at a heatmap using fragments present in the largest number of samples.
This still looks terrible because the fragment matrix is so sparse.

<img src="Figs/p008_countHeatmap1-1.png" style="display: block; margin: auto;" />


## Figure 2.3 Mapped read pairs vs number of fragments
Does higher sequencing depth lead to detecting more fragments?
(This is already answered in the saturation plots above).

<img src="Figs/p009_fragmentsVreadsLogY-1.png" style="display: block; margin: auto;" />

<img src="Figs/p010_fragmentsVreadsLinearY-1.png" style="display: block; margin: auto;" />
The Final samples were sequenced deeply enough for the Plasmids, but the number of detected fragments
was still rapidly increasing with sequencing depth for the gDNA samples.
The story is similar for the Pilot samples, where more fragments would have been detected in the gDNA samples
if they were sequenced more deeply, but the Plasmid fragments had been fully sampled.



## Figure 3
Q: What are the sizes of the genomic fragments, and what are the sizes of the fragments 
that were cloned into the library plasmid? Was there any bias in cloning (meaning 
although there was a broader range of sizes in the genomic fragments, fragments of a narrower
range of sizes were cloned)?

<img src="Figs/p011_insertsize-1.png" style="display: block; margin: auto;" />


Summary statistics for fragment length
<table class="table table-striped table-hover table-condensed table-responsive" style="width: auto !important; margin-left: auto; margin-right: auto;">
 <thead>
  <tr>
   <th style="text-align:left;">   </th>
   <th style="text-align:right;"> Min </th>
   <th style="text-align:right;"> Q1 </th>
   <th style="text-align:right;"> Median </th>
   <th style="text-align:right;"> Mean </th>
   <th style="text-align:right;"> Q3 </th>
   <th style="text-align:right;"> Max </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> Pilot.gDNA </td>
   <td style="text-align:right;"> 77 </td>
   <td style="text-align:right;"> 377 </td>
   <td style="text-align:right;"> 417 </td>
   <td style="text-align:right;"> 421.4145 </td>
   <td style="text-align:right;"> 462 </td>
   <td style="text-align:right;"> 1425 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Pilot.Plasmid </td>
   <td style="text-align:right;"> 282 </td>
   <td style="text-align:right;"> 384 </td>
   <td style="text-align:right;"> 423 </td>
   <td style="text-align:right;"> 426.8165 </td>
   <td style="text-align:right;"> 465 </td>
   <td style="text-align:right;"> 590 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Final.gDNA </td>
   <td style="text-align:right;"> 2 </td>
   <td style="text-align:right;"> 510 </td>
   <td style="text-align:right;"> 544 </td>
   <td style="text-align:right;"> 540.3260 </td>
   <td style="text-align:right;"> 576 </td>
   <td style="text-align:right;"> 1493 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Final.Plasmid </td>
   <td style="text-align:right;"> 7 </td>
   <td style="text-align:right;"> 527 </td>
   <td style="text-align:right;"> 559 </td>
   <td style="text-align:right;"> 554.9050 </td>
   <td style="text-align:right;"> 588 </td>
   <td style="text-align:right;"> 1382 </td>
  </tr>
</tbody>
</table>
Median insert for the two groups is similar, and distributions are very similar. There doesn't seem to be much evidence
of significant size bias in plasmid incorporation.



## Figure 4
How much of the genome is covered by the fragments? (Visual representation)

### TODO: Compute coverage across the whole genome for combined Final.Plasmid.
What % of the genome is covered (forward, reverse, both)?
What % of the exons are covered (forward, reverse, both)?
What % of the introns are covered (forward, reverse, both)? 

### Visual Representations of Genome Coverage:
#### All plots are for fragments from the combined Final Plasmid replicates.
#### Black bars inside of the contig represent genes in forward orientation, green bars are reverse.

<img src="Figs/p012_coverage-1.png" style="display: block; margin: auto;" />
The Final Plasmid fragment library provides high coverage across both genes and introns.


How does coverage look across a larger region of the genome?
<img src="Figs/p013_morecoverage-1.png" style="display: block; margin: auto;" />

What does the spike in coverage on contig DS571153 look like up close?
<img src="Figs/p014_morecoverage2-1.png" style="display: block; margin: auto;" />
TODO zoom in on the 9th contig, what does the huge spike look like up close in a Geneious plot?
It would be interesting to see reads + intervals mapped.



## Figure/Table 5, 6, 7:
Q: How much of the genome is covered by the fragments? (more in-depth analysis)
Q: For genes that are represented, is there 1 fragment, or more?
Q: For genes that are represented, is the library fragment in the same orientation as the gene, or not?

<table class="table table-striped table-hover table-condensed table-responsive" style="width: auto !important; margin-left: auto; margin-right: auto;">
 <thead>
  <tr>
   <th style="text-align:left;">   </th>
   <th style="text-align:right;"> Pilot.gDNA </th>
   <th style="text-align:right;"> pilot.Plasmid </th>
   <th style="text-align:right;"> Final.gDNA </th>
   <th style="text-align:right;"> Final.Plasmid </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> bpCoveredForward </td>
   <td style="text-align:right;"> 19961090.00 </td>
   <td style="text-align:right;"> 93257.00 </td>
   <td style="text-align:right;"> 20500538.00 </td>
   <td style="text-align:right;"> 19730276.00 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> pctCoveredForward </td>
   <td style="text-align:right;"> 95.97 </td>
   <td style="text-align:right;"> 0.45 </td>
   <td style="text-align:right;"> 98.56 </td>
   <td style="text-align:right;"> 94.86 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> bpCoveredReverse </td>
   <td style="text-align:right;"> 19949512.00 </td>
   <td style="text-align:right;"> 99274.00 </td>
   <td style="text-align:right;"> 20499865.00 </td>
   <td style="text-align:right;"> 19734222.00 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> pctCoveredReverse </td>
   <td style="text-align:right;"> 95.97 </td>
   <td style="text-align:right;"> 0.45 </td>
   <td style="text-align:right;"> 98.56 </td>
   <td style="text-align:right;"> 94.86 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> bpCoveredUnStranded </td>
   <td style="text-align:right;"> 20401392.00 </td>
   <td style="text-align:right;"> 191674.00 </td>
   <td style="text-align:right;"> 20571421.00 </td>
   <td style="text-align:right;"> 20225883.00 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> pctCoveredUnStranded </td>
   <td style="text-align:right;"> 98.09 </td>
   <td style="text-align:right;"> 0.92 </td>
   <td style="text-align:right;"> 98.91 </td>
   <td style="text-align:right;"> 97.24 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> GenesTargetedStranded </td>
   <td style="text-align:right;"> 8299.00 </td>
   <td style="text-align:right;"> 152.00 </td>
   <td style="text-align:right;"> 8310.00 </td>
   <td style="text-align:right;"> 8302.00 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> GenesMissedStranded </td>
   <td style="text-align:right;"> 34.00 </td>
   <td style="text-align:right;"> 8181.00 </td>
   <td style="text-align:right;"> 23.00 </td>
   <td style="text-align:right;"> 31.00 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> MeanFragmentsPerGeneStranded </td>
   <td style="text-align:right;"> 21.00 </td>
   <td style="text-align:right;"> 0.00 </td>
   <td style="text-align:right;"> 59.20 </td>
   <td style="text-align:right;"> 23.30 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> GenesTargetedByMultipleStranded </td>
   <td style="text-align:right;"> 8270.00 </td>
   <td style="text-align:right;"> 54.00 </td>
   <td style="text-align:right;"> 8308.00 </td>
   <td style="text-align:right;"> 8276.00 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> GenesTargetedUnStranded </td>
   <td style="text-align:right;"> 8310.00 </td>
   <td style="text-align:right;"> 305.00 </td>
   <td style="text-align:right;"> 8310.00 </td>
   <td style="text-align:right;"> 8307.00 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> GenesMissedUnStranded </td>
   <td style="text-align:right;"> 23.00 </td>
   <td style="text-align:right;"> 8028.00 </td>
   <td style="text-align:right;"> 23.00 </td>
   <td style="text-align:right;"> 26.00 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> MeanFragmentsPerGeneUnStranded </td>
   <td style="text-align:right;"> 42.90 </td>
   <td style="text-align:right;"> 0.10 </td>
   <td style="text-align:right;"> 119.90 </td>
   <td style="text-align:right;"> 47.20 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> GenesTargetedByMultipleUnStranded </td>
   <td style="text-align:right;"> 8307.00 </td>
   <td style="text-align:right;"> 111.00 </td>
   <td style="text-align:right;"> 8310.00 </td>
   <td style="text-align:right;"> 8301.00 </td>
  </tr>
</tbody>
</table>

## Figure/Table 6 & 7 Fragments per gene Heatmap:
For genes that are represented, is the library fragment in the same orientation as the gene, or not?

<img src="Figs/p013_fragmentsPerGeneHeatmap-1.png" style="display: block; margin: auto;" />

## Figure 8
Q: What about the few genes that are never represented?
<img src="Figs/p014_noCoverageGenesHeatmap-1.png" style="display: block; margin: auto;" />

## Tables:

### Sequencing and Fragment count statistics for Final and Pilot samples
<table class="table table-striped table-hover table-condensed table-responsive" style="width: auto !important; margin-left: auto; margin-right: auto;">
 <thead>
  <tr>
   <th style="text-align:left;">   </th>
   <th style="text-align:left;"> sample </th>
   <th style="text-align:right;"> mappedPairs </th>
   <th style="text-align:right;"> fragments </th>
   <th style="text-align:left;"> Type </th>
   <th style="text-align:right;"> Rep </th>
   <th style="text-align:left;"> Group </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> 9 </td>
   <td style="text-align:left;"> B1-FA </td>
   <td style="text-align:right;"> 447816 </td>
   <td style="text-align:right;"> 189741 </td>
   <td style="text-align:left;"> gDNA </td>
   <td style="text-align:right;"> 1 </td>
   <td style="text-align:left;"> Pilot </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 33 </td>
   <td style="text-align:left;"> B2-FA </td>
   <td style="text-align:right;"> 480134 </td>
   <td style="text-align:right;"> 203572 </td>
   <td style="text-align:left;"> gDNA </td>
   <td style="text-align:right;"> 2 </td>
   <td style="text-align:left;"> Pilot </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 4 </td>
   <td style="text-align:left;"> B3-FA </td>
   <td style="text-align:right;"> 342594 </td>
   <td style="text-align:right;"> 143817 </td>
   <td style="text-align:left;"> gDNA </td>
   <td style="text-align:right;"> 3 </td>
   <td style="text-align:left;"> Pilot </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 14 </td>
   <td style="text-align:left;"> gLibA-A5 </td>
   <td style="text-align:right;"> 276964 </td>
   <td style="text-align:right;"> 472 </td>
   <td style="text-align:left;"> Plasmid </td>
   <td style="text-align:right;"> 1 </td>
   <td style="text-align:left;"> Pilot </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 28 </td>
   <td style="text-align:left;"> gLibA-A6 </td>
   <td style="text-align:right;"> 399114 </td>
   <td style="text-align:right;"> 481 </td>
   <td style="text-align:left;"> Plasmid </td>
   <td style="text-align:right;"> 2 </td>
   <td style="text-align:left;"> Pilot </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 35 </td>
   <td style="text-align:left;"> gLibA-A7 </td>
   <td style="text-align:right;"> 573080 </td>
   <td style="text-align:right;"> 540 </td>
   <td style="text-align:left;"> Plasmid </td>
   <td style="text-align:right;"> 3 </td>
   <td style="text-align:left;"> Pilot </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 23 </td>
   <td style="text-align:left;"> D10_FB-1 </td>
   <td style="text-align:right;"> 1317646 </td>
   <td style="text-align:right;"> 522946 </td>
   <td style="text-align:left;"> gDNA </td>
   <td style="text-align:right;"> 1 </td>
   <td style="text-align:left;"> Final </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 6 </td>
   <td style="text-align:left;"> D11_FB-2 </td>
   <td style="text-align:right;"> 1035946 </td>
   <td style="text-align:right;"> 413343 </td>
   <td style="text-align:left;"> gDNA </td>
   <td style="text-align:right;"> 2 </td>
   <td style="text-align:left;"> Final </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 25 </td>
   <td style="text-align:left;"> D12_FB-3 </td>
   <td style="text-align:right;"> 1466722 </td>
   <td style="text-align:right;"> 575167 </td>
   <td style="text-align:left;"> gDNA </td>
   <td style="text-align:right;"> 3 </td>
   <td style="text-align:left;"> Final </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 26 </td>
   <td style="text-align:left;"> F1_LibB1-1 </td>
   <td style="text-align:right;"> 1500958 </td>
   <td style="text-align:right;"> 92822 </td>
   <td style="text-align:left;"> Plasmid </td>
   <td style="text-align:right;"> 1 </td>
   <td style="text-align:left;"> Final </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 22 </td>
   <td style="text-align:left;"> F2_LibB1-2 </td>
   <td style="text-align:right;"> 1318560 </td>
   <td style="text-align:right;"> 90347 </td>
   <td style="text-align:left;"> Plasmid </td>
   <td style="text-align:right;"> 2 </td>
   <td style="text-align:left;"> Final </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 10 </td>
   <td style="text-align:left;"> F3_LibB1-3 </td>
   <td style="text-align:right;"> 1501272 </td>
   <td style="text-align:right;"> 93088 </td>
   <td style="text-align:left;"> Plasmid </td>
   <td style="text-align:right;"> 3 </td>
   <td style="text-align:left;"> Final </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 13 </td>
   <td style="text-align:left;"> F4_LibB2-1 </td>
   <td style="text-align:right;"> 1457526 </td>
   <td style="text-align:right;"> 126868 </td>
   <td style="text-align:left;"> Plasmid </td>
   <td style="text-align:right;"> 1 </td>
   <td style="text-align:left;"> Final </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 18 </td>
   <td style="text-align:left;"> F5_LibB2-2 </td>
   <td style="text-align:right;"> 1723194 </td>
   <td style="text-align:right;"> 134349 </td>
   <td style="text-align:left;"> Plasmid </td>
   <td style="text-align:right;"> 2 </td>
   <td style="text-align:left;"> Final </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 30 </td>
   <td style="text-align:left;"> F6_LibB2-3 </td>
   <td style="text-align:right;"> 1740592 </td>
   <td style="text-align:right;"> 132963 </td>
   <td style="text-align:left;"> Plasmid </td>
   <td style="text-align:right;"> 3 </td>
   <td style="text-align:left;"> Final </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 20 </td>
   <td style="text-align:left;"> F7_LibB3-1 </td>
   <td style="text-align:right;"> 1467720 </td>
   <td style="text-align:right;"> 129278 </td>
   <td style="text-align:left;"> Plasmid </td>
   <td style="text-align:right;"> 1 </td>
   <td style="text-align:left;"> Final </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 16 </td>
   <td style="text-align:left;"> F8_LibB3-2 </td>
   <td style="text-align:right;"> 2712002 </td>
   <td style="text-align:right;"> 153399 </td>
   <td style="text-align:left;"> Plasmid </td>
   <td style="text-align:right;"> 2 </td>
   <td style="text-align:left;"> Final </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 36 </td>
   <td style="text-align:left;"> F9_LibB3-3 </td>
   <td style="text-align:right;"> 2207970 </td>
   <td style="text-align:right;"> 143289 </td>
   <td style="text-align:left;"> Plasmid </td>
   <td style="text-align:right;"> 3 </td>
   <td style="text-align:left;"> Final </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 1 </td>
   <td style="text-align:left;"> F10_LibB4-1 </td>
   <td style="text-align:right;"> 1588276 </td>
   <td style="text-align:right;"> 40770 </td>
   <td style="text-align:left;"> Plasmid </td>
   <td style="text-align:right;"> 1 </td>
   <td style="text-align:left;"> Final </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 12 </td>
   <td style="text-align:left;"> F11_LibB4-2 </td>
   <td style="text-align:right;"> 1418664 </td>
   <td style="text-align:right;"> 38870 </td>
   <td style="text-align:left;"> Plasmid </td>
   <td style="text-align:right;"> 2 </td>
   <td style="text-align:left;"> Final </td>
  </tr>
  <tr>
   <td style="text-align:left;"> 21 </td>
   <td style="text-align:left;"> F12_LibB4-3 </td>
   <td style="text-align:right;"> 2323702 </td>
   <td style="text-align:right;"> 44937 </td>
   <td style="text-align:left;"> Plasmid </td>
   <td style="text-align:right;"> 3 </td>
   <td style="text-align:left;"> Final </td>
  </tr>
</tbody>
</table>

### Fragment count statistics for combined replicates
Q: How many unique fragments are there?
<table class="table table-striped table-hover table-condensed table-responsive" style="width: auto !important; margin-left: auto; margin-right: auto;">
 <thead>
  <tr>
   <th style="text-align:left;">   </th>
   <th style="text-align:right;"> Pilot.gDNA </th>
   <th style="text-align:right;"> Pilot.Plasmid </th>
   <th style="text-align:right;"> Final.gDNA </th>
   <th style="text-align:right;"> Final.Plasmid </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> Fragments </td>
   <td style="text-align:right;"> 537066 </td>
   <td style="text-align:right;"> 621 </td>
   <td style="text-align:right;"> 1509696 </td>
   <td style="text-align:right;"> 489981 </td>
  </tr>
</tbody>
</table>



## R session info and packages
**R version 3.6.1 (2019-07-05)**

**Platform:** x86_64-pc-linux-gnu (64-bit) 

**locale:**
_LC_CTYPE=en_US_, _LC_NUMERIC=C_, _LC_TIME=en_US_, _LC_COLLATE=en_US_, _LC_MONETARY=en_US_, _LC_MESSAGES=en_US_, _LC_PAPER=en_US_, _LC_NAME=C_, _LC_ADDRESS=C_, _LC_TELEPHONE=C_, _LC_MEASUREMENT=en_US_ and _LC_IDENTIFICATION=C_

**attached base packages:** 

* stats4 
* parallel 
* stats 
* graphics 
* grDevices 
* utils 
* datasets 
* methods 
* base 


**other attached packages:** 

* pander(v.0.6.3) 
* plyranges(v.1.6.10) 
* karyoploteR(v.1.12.4) 
* regioneR(v.1.18.1) 
* vegan(v.2.5-6) 
* lattice(v.0.20-38) 
* permute(v.0.9-5) 
* gridExtra(v.2.3) 
* hrbrthemes(v.0.8.0) 
* BSgenome(v.1.54.0) 
* rtracklayer(v.1.46.0) 
* GenomicRanges(v.1.38.0) 
* GenomeInfoDb(v.1.22.1) 
* forcats(v.0.5.0) 
* stringr(v.1.4.0) 
* dplyr(v.0.8.5) 
* purrr(v.0.3.4) 
* tidyr(v.1.0.2) 
* tibble(v.3.0.1) 
* tidyverse(v.1.3.0) 
* data.table(v.1.12.8) 
* pheatmap(v.1.0.12) 
* ggplot2(v.3.3.0) 
* readr(v.1.3.1) 
* Rsubread(v.2.0.1) 
* Biostrings(v.2.54.0) 
* XVector(v.0.26.0) 
* IRanges(v.2.20.2) 
* S4Vectors(v.0.24.2) 
* BiocGenerics(v.0.32.0) 
* kableExtra(v.1.1.0) 


**loaded via a namespace (and not attached):** 

* readxl(v.1.3.1) 
* backports(v.1.1.6) 
* Hmisc(v.4.4-0) 
* BiocFileCache(v.1.10.2) 
* systemfonts(v.0.2.1) 
* lazyeval(v.0.2.2) 
* splines(v.3.6.1) 
* BiocParallel(v.1.20.1) 
* digest(v.0.6.25) 
* ensembldb(v.2.10.2) 
* htmltools(v.0.4.0) 
* fansi(v.0.4.1) 
* checkmate(v.2.0.0) 
* magrittr(v.1.5) 
* memoise(v.1.1.0) 
* cluster(v.2.1.0) 
* modelr(v.0.1.6) 
* extrafont(v.0.17) 
* matrixStats(v.0.56.0) 
* extrafontdb(v.1.0) 
* askpass(v.1.1) 
* prettyunits(v.1.1.1) 
* jpeg(v.0.1-8.1) 
* colorspace(v.1.4-1) 
* blob(v.1.2.1) 
* rvest(v.0.3.5) 
* rappdirs(v.0.3.1) 
* haven(v.2.2.0) 
* xfun(v.0.13) 
* crayon(v.1.3.4) 
* RCurl(v.1.95-4.13) 
* jsonlite(v.1.6.1) 
* survival(v.3.1-12) 
* VariantAnnotation(v.1.32.0) 
* glue(v.1.3.2) 
* gtable(v.0.3.0) 
* zlibbioc(v.1.32.0) 
* webshot(v.0.5.2) 
* DelayedArray(v.0.12.2) 
* Rttf2pt1(v.1.3.8) 
* scales(v.1.1.0) 
* bezier(v.1.1.2) 
* DBI(v.1.1.0) 
* Rcpp(v.1.0.4.6) 
* htmlTable(v.1.13.3) 
* viridisLite(v.0.3.0) 
* progress(v.1.2.2) 
* foreign(v.0.8-71) 
* bit(v.1.1-15.2) 
* Formula(v.1.2-3) 
* htmlwidgets(v.1.5.1) 
* httr(v.1.4.1) 
* RColorBrewer(v.1.1-2) 
* acepack(v.1.4.1) 
* ellipsis(v.0.3.0) 
* pkgconfig(v.2.0.3) 
* XML(v.3.99-0.3) 
* farver(v.2.0.3) 
* nnet(v.7.3-12) 
* dbplyr(v.1.4.2) 
* tidyselect(v.1.0.0) 
* labeling(v.0.3) 
* rlang(v.0.4.5) 
* AnnotationDbi(v.1.48.0) 
* munsell(v.0.5.0) 
* cellranger(v.1.1.0) 
* tools(v.3.6.1) 
* cli(v.2.0.2) 
* generics(v.0.0.2) 
* RSQLite(v.2.2.0) 
* broom(v.0.5.5) 
* evaluate(v.0.14) 
* yaml(v.2.2.1) 
* knitr(v.1.28) 
* bit64(v.0.9-7) 
* fs(v.1.3.2) 
* AnnotationFilter(v.1.10.0) 
* nlme(v.3.1-140) 
* xml2(v.1.2.5) 
* biomaRt(v.2.42.1) 
* compiler(v.3.6.1) 
* rstudioapi(v.0.11) 
* curl(v.4.3) 
* png(v.0.1-7) 
* reprex(v.0.3.0) 
* stringi(v.1.4.5) 
* highr(v.0.8) 
* GenomicFeatures(v.1.38.2) 
* gdtools(v.0.2.2) 
* ProtGenerics(v.1.18.0) 
* Matrix(v.1.2-17) 
* vctrs(v.0.2.4) 
* pillar(v.1.4.3) 
* lifecycle(v.0.2.0) 
* bitops(v.1.0-6) 
* R6(v.2.4.1) 
* latticeExtra(v.0.6-29) 
* dichromat(v.2.0-0) 
* MASS(v.7.3-51.4) 
* assertthat(v.0.2.1) 
* SummarizedExperiment(v.1.16.1) 
* openssl(v.1.4.1) 
* withr(v.2.1.2) 
* GenomicAlignments(v.1.22.1) 
* Rsamtools(v.2.2.3) 
* GenomeInfoDbData(v.1.2.2) 
* mgcv(v.1.8-28) 
* hms(v.0.5.3) 
* rpart(v.4.1-15) 
* grid(v.3.6.1) 
* bamsignals(v.1.18.0) 
* rmarkdown(v.2.1) 
* biovizBase(v.1.34.1) 
* Biobase(v.2.46.0) 
* lubridate(v.1.7.8) 
* base64enc(v.0.1-3) 
