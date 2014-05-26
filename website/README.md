# GenomeRunner

##### Author: Mikhail Dozmorov [mikhail at dozmorov dot com](mailto:mikhail@dozmorov.com), Lukas Cara, Cory Giles
##### Website: [www.genomerunner.org](http://www.genomerunner.org)  
##### Repository: [github.com//mdozmorov/genome_runner](https://github.com/mdozmorov/genome_runner)  

[GenomeRunner Web](http://www.genomerunner.org) is a tool for functional interpretation of sets of single nucleotide polymorphisms (SNPs) by considering their co-localization with functional/regulatory genome annotation data (epigenomic elements). It is particularly useful for interpretation of functional roles of SNPs in non-protein coding regions, and rare variants. An example of GenomeRunner's results can be found in the analysis of Sjogren's syndrome GWAS ([Nature Genetics](http://www.nature.com/ng/journal/v45/n11/full/ng.2792.html)), where it identified RFX5 transcription factor binding site as the most statistically significantly co-localized with the disease' SNPs.

GenomeRunner Web calculates enrichment p-values (Chi-squared test) by evaluating whether a set of SNPs co-localizes with regulatory elements more often that could happen by chance. For three or more sets of SNPs, GenomeRunner Web performs the 'epigenomic similarity' analysis by correlating SNP set-specific profiles of enrichment p-values. Downloadable results are visualized as interactive heatmaps and tables.

This documentation describes the inner workings of GenomeRunner Web interface and command line version, explains the statistics, conventions and terms, and provides the instructions for local installation of GenomeRunner on Linux-based systems.
