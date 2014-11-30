

Definitions
========================================================

**FOI** (Features Of Interest, aka SNP sets) - a set of (experimentally defined) genomic regions sharing common associations or properties (e.g., disease/trait/phenotype-associated SNPs found in a genome-wide association study)

**GF** (Genomic Features, aka regulatory datasets) – genomic data other than nucleotide sequence that describes functions, biochemical/regulatory properties, or experimental values associated with genomic regions. These encompass histone modification marks, chromatin state segmentation, DNA methylation, non-coding RNAs, CpG sites and the like features.

**Enrichment analysis** - enrichment analysis answers a question whether a set of SNPs of interest (FOIs) is enriched or depleted in regulatory datasets (GFs) as compared with randomly selected SNPs. GenomeRunner automates testing for thousands of enriched associations and prioritized over- and underrepresented associations by p-value. The enrichment p-values are calculated using Chi-squared tests and corrected for multiple testing. See the [Enrichment results](../hypergeom4/enrichment.md) section for more details.

**Transformed enrichment p-value** - the p-values are –log10-transformed, and a “-” sign is added to signify an *underrepresented* enrichment.  This transformation allows representation of enriched associations in an intuitive format - *larger positive numbers* correspond to more statistically significant *overrepresented* enrichments while *smaller negative numbers* represent more statistically significant *underrepresented* enrichments. 

**Regulatory enrichment profile** - a vector of SNP set-specific transformed enrichment p-values. This vector defines regulatory-wide associations of a set of SNPs (FOIs) and is used to quantify regulatory similarity with other sets of SNPs.

**Regulatory similarity analysis** - the regulatory similarity analysis defines similarity among regulatory enrichment profiles for three or more sets of SNPs of interest. It answers a question whether different sets of SNPs are located in similar regulatory regions, hence may affect similar  regulatory networks. This analysis may be useful when comparing sets of SNPs from multiple genome-wide association studies, or patient-specific sets of SNPs. It is particularly useful for the analysis of patient-specific rare variants, to observe whether patients can be classified by similarity of the regulatory elements affected by their SNPs. See the [Regulatory similarity results](../hypergeom4/episimilarity.md) section for more details.

**rsIDs** - the rs number is an accession number used by researchers and databases to refer to specific SNPs. It stands for [Reference SNP cluster ID](http://www.ncbi.nlm.nih.gov/SNP/get_html.cgi?whichHtml=how_to_submit#REFSNP) (from [23andMe](https://customercare.23andme.com/entries/21263638-What-are-all-the-rs-numbers-rsids-). Examples of rsIDs: rs74088619, rs74088617.
