# Establishment of quantitative RNAi-based forward genetics in *Entamoeba histolytica* and identification of genes required for growth

This repository contains code and associated files involved in analysis of sequencing data from several whole-genome knockout libraries generated for *E. histolytica*.

Publication Pre-print: https://www.biorxiv.org/content/10.1101/2020.05.28.121780v3

Data: https://www.ncbi.nlm.nih.gov/bioproject/672229 

*Entamoeba histolytica* is a globally important pathogen responsible for ~50m infections per year, resulting in ~15,500 deaths/year in children and ~67,900 deaths/year in people of all ages. Treatment options are limited for this parasite, and genomic tools that could accelerate novel theraputic approaces are lacking, making study of gene function difficult. 

*E. histolytica* has a ~20Mb genome size, that is difficult to study because of it's high, ~75% AT content. Additional it is thought to be tetraploid. The genome contains an estimated 8,000 genes, 1/3 of which have no identified homolog, while functional annotation is poor or absent for ~1/2 of the genes.

We have developed a whole-genome knockout screening strategy to rapidly accelerate functional annotation, briefly described as follows:

1) Fragment the *E.histolitica* genome into tiny (~700bp) pieces. Attach small pieces of DNA to the fragments called "partial Illumina adapters" and then clone them into a small circular piece of DNA called a plasmid (expression vector) that can be maintained in bacterial culture. 
2) This library of plasmids can then be transfected into the A. histolytica cells while they are also being treated with an antibiotic or undergoing some kind of stress etc. Because each of the cells in the population only take up one or a couple of plasmids, any cell that has a "necessary" gene knocked down won't survive.
   *  When one of these vectors is inserted into an *E.histolitica* cell, the small piece of DNA will get expressed as RNA and then anneal to the complementary RNA from a gene that the cell is expressing, creating double stranded RNA (dsRNA). dsRNA is recognized as a virus by *E. histolictica*, and chopped into small fragments, resulting in knock down of gene expression for the targeted gene.
3)  After treatment, total DNA can be extracted from the colony of *E.histolitica* cells that survived. Primers designed against the partial Illumina adapters are used to create fully sequencable Illumina libraries, and samples are sequenced on an Illumina sequencer. Changes in fragment counts between treatment conditions can then be used to infer gene function associated with the treatment, enabling high-throughput screening and functional gene annotation.


The analysis approach reported in the publication is largely documented in the following two scripts:

https://github.com/samhunter/2020-03-11-KatyRalston.AkhilaBettadapur-Entamoeba_histolytica-UCD/blob/master/03-count_fragments.py

and

https://github.com/samhunter/2020-03-11-KatyRalston.AkhilaBettadapur-Entamoeba_histolytica-UCD/blob/master/03-counts/03-fragments_profile_analysis.RMD
