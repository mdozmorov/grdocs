

dbcreator FAQ
========================================================

### * How do I install databases for multiple organism?

Simply re-run the `dbcreator*` modules and designate a different organism code with the **-g** argument.

### * Can I run the `dbcreator` modules on partially completed database?

Yes, the `dbcreator*` modules skip GFs that have already been installed.

### * The `dbcreator` modules take long time to run. Can I terminate them?

Yes, and you can restart them later. The `dbcreator*` modules flags partially completed GFs with a '.temp' extension. These GFs are not visible to the `server` module, and will be installed correctly upon next `dbcreator*` runs.

### * Can I download individual GFs?

Individual GFs can be installed by providing their comma-separated names after the **-f** parameter (i.e `-f knownGene`).

### * Can I simply download all regulatory datasets and let the `dbcreator*` modules work with them?

In fact, this is the recommended way. `rsync` can be used to mirror the USCS data files. Simply create `[dir]/downloads/` folder and execute the following command within it:

```
rsync -avzP rsync://hgdownload.cse.ucsc.edu/goldenPath/hg19/database/* .
```
Remember that `rsync` is not infallible. To automatically restart broken transfers, check GenomeRunner' [source code](https://github.com/mdozmorov/genome_runner/tree/master/commandline) for `autorsync.sh` script in the `commandline` folder.
