

Results FAQ
========================================================

### * Why should I care about enrichment analysis?

If you think SNPs may collectively alter regulatory landscape(s) in the genome, then the enrichment analysis by GenomeRunner is for you. Naturally, you will want to know **which** regulatory marks may be altered by your SNPs, in which **cell type** they may have strongest effect, and is their effect **statistically significant**. GenomeRunner answers all those questions by testing your sets of SNPs for statistically significant co-locatizations (enrichments) in thousands of functional and regulatory elements provided by the ENCODE project and the UCSC genome database.

### * Why should I care about epigenomic similarity analysis?

If you have multiple sets of SNPs, e.g., patient-specific genomic variants or disease-associated SNP sets, you may want to compare their regulatory impact. This may give you an idea whether different diseases share similar regulatory abnormalities, or if certain subgroups of patients have common or distinct regulatory abnormalities associated with their genomic profiles. GenomeRunner answers these questions by testing sets of SNPs for enrichment in thousands of functional and regulatory elements, constructing SNP set-specific epigenomic enrichment profiles and visualizing correlation matrix of pair-wise correlation coefficients among the epigenomic enrichment profiles.

### * Isn't epigenomic similarity analysis the same as proximity analysis?

Not quite, but close. While proximity analysis considers the *distance* among the SNPs in a set, the epigenomic similarity analysis considers SNPs proximity **within regulatory context**. Both analyses are not mutually exclusive, they just answer different questions.
