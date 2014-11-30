

Results FAQ
========================================================

### * Why should I care about the enrichment analysis?

If you, like me, are convinced that SNPs may collectively alter regulatory landscape(s) in the genome, then the enrichment analysis by GenomeRunner is for you. Naturally, you will want to know **which** regulatory datasets may be altered by the SNPs, in which **cell type** they may have the strongest effect, and whether their effect is **statistically significant**. GenomeRunner answers all those questions by testing your sets of SNPs for statistically significant co-locatizations (enrichments) in thousands of regulatory datasets provided by the ENCODE project and the UCSC genome database.

### * Why should I care about the regulatory similarity analysis?

If you have multiple sets of SNPs, e.g., patient-specific SNP sets, or disease-associated SNP sets, you may want to compare their regulatory impact. This may give you an idea whether different patients, or diseases, share similar regulatory abnormalities. GenomeRunner answers these questions by testing sets of SNPs for enrichment in thousands of regulatory datasets, constructing SNP set-specific regulatory enrichment profiles and visualizing correlation matrix of pair-wise correlation coefficients among the regulatory enrichment profiles.

### * Isn't the regulatory similarity analysis is the same as the proximity analysis?

Not quite, but close. While the proximity analysis considers the *distance* among the SNPs in a set, the regulatory similarity analysis considers SNPs proximity **within regulatory context**. Both analyses are not mutually exclusive, they just answer different questions.

There may be situations when SNP sets contain SNPs that are located in different places in the genome, yet, within similar regulatory context. Such situations would be missed by the proximity analysis, but will be picked up by the regulatory similarity analysis. 
