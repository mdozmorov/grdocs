

optimizer, a module to speed up GenomeRunner analyses
========================================================

To greatly shorten enrichment analysis time, process databases with the `optimizer` module. It will pre-calculate overlap statistics for each set of background SNPs in the `[dir]/custom_data/backgrounds/[org]` folder vs. each genome annotation track in the `[dir]/grsnp_db*/[org]` folder. These statistics take considerable amount of time and pre-calculating them in advance greatly speeds up GenomeRunner.

These pre-calculated statistics are stored in the `[dir]/grsnp_db/[organism]/bkg_overlaps.gr` file. Before running the optimizer, be sure to place some [background SNP sets](../dbcreator/dbcreatorBackground.md) in the `[dir]/custom_data/backgrounds/[organism]/` folder.

We run the `optimizer` module as:

```
python -m grsnp.optimizer -g hg19 -d [dir] -w 1
```

The **-w** argument specifies number of workers to perform statistical calculations. See the [Parallelization](optimizerParallel.md) section for more details.
