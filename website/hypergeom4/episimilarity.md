

Epigenomic similarity analysis results
========================================================

The [epigenomic similarity analysis](../misc/definitions.md) (see also [Epigenomic enrichment analysis statistics](../statistics/episimilarity.md) section) is measurement of similarity among sets of SNPs based on their enrichment within regulatory landscape. Consider 3 sets of SNPs:

![Epigenomic similarity sketch](../figures/episimilarity_sketch.png)

*SNP set 1* is enriched in *Genomic annotations 2*. *SNP set 2* and *SNP set 3* are similarly enriched  in *Genomic annotations 1*. Therefore, our epigenomic similarity heatmap may look like:




Testing each SNP set against additional genomic annotations will construct SNP set-specific [epigenomic enrichment profile](../statistics/episimilarity.md) of the enrichment p-values. These profiles are correlated with each other, and an MxM matrix of Pearson's correlation coefficients 
