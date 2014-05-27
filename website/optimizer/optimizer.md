


optimizer, a module to speed up GenomeRunner analyses
========================================================

To greatly shorten the enrichment analysis time, we should run the `optimizer` module on the database. It will pre-calculate overlap statistics for each set of background SNPs vs. each genome annotation track. These statistics take considerable amount of time, and pre-calculating them in advance greatly shortens GenomeRunner's run time.

The statistics are calculated for each set of background regions in the `[dir]/custom_data/backgrounds/[organism]` folder. These pre-calculated statistics are stored in the `[dir]/grsnp_db/[organism]/bkg_overlaps.gr` file. Before running the optimizer, be sure to place some [background SNP sets](../dbcreator/dbcreatorBackground.md) in the `[dir]/custom_data/backgrounds/[organism]/` folder.

We run the `optimizer` module as:


```r
python -m grsnp.optimizer -g hg19 -d [dir]
```

