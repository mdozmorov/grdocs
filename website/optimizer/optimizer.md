


optimizer, a module to speed up GenomeRunner analyses
========================================================

To greatly shorten the enrichment analysis time, run the `optimizer` module on the database. It will pre-calculate overlap statistics for each set of the background SNPs in the `[dir]/custom_data/backgrounds/[org]` folder vs. each genome annotation track in the `[dir]/grsnp_db/[org]` folder. These statistics take considerable amount of time to run, and pre-calculating them in advance shortens GenomeRunner's run time.

These pre-calculated statistics are stored in the `[dir]/grsnp_db/[organism]/bkg_overlaps.gr` file. Before running the optimizer, be sure to place some [background SNP sets](../dbcreator/dbcreatorBackground.md) in the `[dir]/custom_data/backgrounds/[organism]/` folder.

We run the `optimizer` module as:


```r
python -m grsnp.optimizer -g hg19 -d [dir]
```

