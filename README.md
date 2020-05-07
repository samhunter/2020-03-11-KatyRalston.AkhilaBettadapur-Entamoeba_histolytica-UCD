# Entamoeba histolytica whole genome knock down

Analysis of sequencing data from various whole-genome knockout libraries.

Entamoeba histolytica (causes amoebiasis, infects ~35-50m per year, kills ~55k per year, causes amoebic dysentery, etc). Genomic tools for this organism are poor/lacking, so studying gene function, especially with respect to genes that might make it antibiotic resistant is difficult. 

The idea of this whole-genome knockout screen tool is to:
1) Fragment the genome up into tiny (~700bp) pieces, then attach small pieces of DNA to the fragments called "partial Illumina adapters" and then clone them into a small circular piece of DNA called a plasmid (expression vector). If these vectors are then inserted into a E.h cell, the small piece of DNA will get expressed as RNA and can then bind to the actual RNA from a gene that the cell is trying to express creating double stranded RNA (dsRNA). Double stranded RNA is recognized as a virus by pretty much all organisms, so mechanisms in the cell will chop up the dsRNA before it can be turned into protein, resulting in "knock down" of gene expression for that gene.

2) This "library" of plasmids can then be transfected into the A. histolytica cells while they are also being treated with an antibiotic or undergoing some kind of stress etc. Because each of the cells in the population only take up one or a couple of plasmids, any cell that has a "necessary" gene knocked down won't survive.

3) After treatment, DNA can be extracted from the colony of E.h. cells that survived. Primers designed against the partial Illumina adapters are used to create fully sequencable libraries, and samples are sequenced on an Illumina MiSeq. Shifts in fragment counts can then be used to infer gene function associated with that treatment.