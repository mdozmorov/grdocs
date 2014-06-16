

optimizer FAQ
========================================================

### * Is it necessary to run the `optimizer` module?

No. If the `bkg_overlaps.gr` file was not created by the `optimizer` module, GenomeRunner will calculate overlap statistics on the fly. However, this wil lengthen run time, so be patient.

### * Does the `optimizer` module process genomic features filtered by score?

Yes. The `optimizer` module processes `grsnp_db*` folders with genomic features filtered by score and creates the `bkg_overlaps.gr` files in each.

### * I started the `optimizer` module, but it takes too long. Can I terminate it without losing what has been pre-calculated?

Yes, you can safely terminate the process. The partially completed file bkg_overlaps.gr.tmp will be re-used and appended, when the `otpimizer` module is restarted.

### * How the `bkg_overlaps.gr` file is structured?

It is a tab-separated text file containing the following information:
```
[Absolute path to the GF file]tab[Absolute path to the default background_one]:[bgs_obs]:[n_bgs],[Absolute path to the default background_two]:[bgs_obs]:[n_bgs] etc.,
```
where [n_bgs] is the total number of regions in the background file, and [bgs_obs] is the number of regions overlapping a genomic feature.
