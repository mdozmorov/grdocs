


How the dbcreator module works
========================================================

The `dbcreator` module performs several steps:

* Downloads required files from the [USCS database](http://hgdownload.cse.ucsc.edu/goldenPath/hg19/database/) and places them in the `[dir]/downloads/` folder. Note that this step may take several days on a slow connection. If the download process fails, simply re-run the `dbcreator` module - this will resume the process. A more efficient way is to mirror the [USCS database](http://hgdownload.cse.ucsc.edu/goldenPath/hg19/database/) using rsync (see the [dbcreator FAQ](dbcreatorFAQ.md)).

* Converts the files into [BED format](http://genome.ucsc.edu/FAQ/FAQformat.html#format1), sorts them according to the USCS schema, compresses with [bgzip](http://samtools.sourceforge.net/tabix.shtml). Unsupported data formats are skipped, with warning.

* Places the converted files in `[dir]/grsnp_db/[organism code]/[group]` folders. The ENCODE data (tracks beginning with *wgEncode*) are placed in separate ENCODE subfolders, strictured according to the `[dir]/grsnp_db/[organism]/ENCODE/[data source/type]/[Tier]/[cell type]` schema.

Some genome annotation data may contain non-standard chromosome names, such as *chr1_gl000192_random*, *chr6_ssto_hap7*, *chrUn_gl000248*. These regions will introduce artefacts in p-value calculations. Therefore, it is a good idea to post-process the `GRSNP database` by running:


```r
> for file in find [dir] -type f -name "*.bed.gz"; do f=basename $file; d=dirname $file; echo $file; zcat $file | grep "\bchr[0-9XYM][^_]\b" | awk 'BEGIN {OFS="\t"} { if ( $3 <= $2) { print $1, $2, $2+1, $4, $5, $6 } else { print $0 } }' | sort -k1,1 -k2,2n -k3,3n | uniq > $d/${f%???} && rm $file; bgzip ${file%???} && tabix $file; done
```


The logic here is to process each BED file keeping only standard chromosome names ("\bchr[0-9XYM][^_]\b" regex). Also,`awk` ensures that end genomic coordinates are larger than the start coordinates, and adjusts offending lines accordingly. The standardized files are then compressed with `bgzip` and indexed with `tabix`.

Fixme: Automate this into the `dbcreator` module.
