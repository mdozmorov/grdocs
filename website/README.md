# GenomeRunner web

##### Author: Mikhail Dozmorov [mikhail at dozmorov dot com](mailto:mikhail@dozmorov.com), Lukas Cara, Cory Giles
##### Website: [www.genomerunner.org](http://www.genomerunner.org)  
##### Repository: [github.com//mdozmorov/genome_runner](https://github.com/mdozmorov/genome_runner)  

[GenomeRunner](http://www.genomerunner.org) is a tool for functional interpretation of sets of single nucleotide polymorphisms (SNPs) by considering their co-localization with functional/regulatory genome annotation data (regulatory datasets, see [definitions](misc/definitions.md)). It is particularly useful for the interpretation of functional roles of rare variants and SNPs in non-protein coding regions. See also "Why should I care.." questions in the [Results FAQ](hypergeom4/resultsFaq.md) section. An example of GenomeRunner's results can be found in the analysis of Sjogren's syndrome GWAS ([Nature Genetics](http://www.nature.com/ng/journal/v45/n11/full/ng.2792.html)), where it identified RFX5 transcription factor binding site as most statistically significantly co-localized with the disease-associated SNPs, affecting gene expression changes.

GenomeRunner calculates [enrichment p-values](hypergeom4/enrichment.md) using Chi-squared test by evaluating whether a set of SNPs co-localizes with regulatory datasets more often that could happen by chance. For three or more SNP sets, GenomeRunner also implements a novel idea of [regulatory similarity](hypergeom4/similarity.md) analysis by correlating SNP set-specific regulatory enrichment profiles (see [definitions](misc/definitions.md). Downloadable results are visualized as interactive heatmaps and tables.

This documentation describes inner workings of GenomeRunner web interface and command line usage, explains the statistics, conventions and terms, and provides instructions for local installation on Linux-based systems.
