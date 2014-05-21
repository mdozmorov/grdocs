


How dbcreator works
========================================================

The dbcreator performs several steps:

* Downloads required files from USCS and places them in `[dir]/downloads/`. Note that this step may take several days on slow connections. If the download process fails, simply re-run dbcreator - this will resume the process.

* Converts the files into [the BED format](http://genome.ucsc.edu/FAQ/FAQformat.html#format1), sorts them according to the USCS schema, compresses with [bgzip](http://samtools.sourceforge.net/tabix.shtml). Unsupported data formats are skipped, with warning.

* Places the converted files in `[dir]/grsnp_db/[organism code]/[group]`. The ENCODE data (tracks beginning with wgEncode) are placed in separate ENCODE subfolders, strictured as `[dir]/grsnp_db/[organism]/ENCODE/[data source/type]/[Tier]/[cell type]`.

After the database has been created, the bgzip'ed files need to be indexed with with tabix


```r
> cd [dir]
> find . -type f -name '*.bed.gz' -exec tabix {} \;
```


Fixme: Automate this into dbcreator
