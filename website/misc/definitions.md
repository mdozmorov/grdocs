

Definitions
========================================================

**FOIs** (Features Of Interest) - a set of experimentally-identified genomic regions (e.g., genomic locations of disease/trait/phenotype-associated SNPs found in a genome-wide association study)


**GFs** (Genomic Features, aka genome annotation tracks, functional/regulatory elements, epigenomic regions) – genomic data other than nucleotide sequence that describes functions, biochemical/regulatory properties, or experimental values associated with genome regions. These encompass histone modification marks, chromatin state segmentation, DNA methylation, non-coding RNAs, CpG sites and the like features.


**Enrichment analysis** - enrichment analysis answers the question whether the SNPs of interest (FOIs) are enriched or depleted in genomic features (GFs), as compared with randomly selected SNPs. GenomeRunner automates testing for thousands of enriched associations and prioritized over- and underrepresented associations by p-value. The p-values are calculated using Fisher's exact, or Chi-squared tests, and corrected for multiple testing. See [Statistics section](../statistics/enrichment.md) for more details.


**Epigenomic similarity analysis** - epigenomic similarity analysis defines similarity among enrichment profiles for three or more sets of SNPs of interest. It answers the question whether different sets of SNPs are enriched in similar genomic features, hence may affect similar epigenomic regulatory networks. This analysis may be useful when comparing sets of SNPs from multiple GWA studies, or patient-specific variomes. It is particularly useful for the analysis of patient-specific rare variants, to observe whether patients can be classified by similar regulatory elements affected by their SNPs. See [Statistics section](../statistics/similarity.md) for more details.
