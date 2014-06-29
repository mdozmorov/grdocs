

How the dbcreator module works
========================================================

The `dbcreator*` modules perform several steps:

* Download raw data files and place them in the `[dir]/downloads/` folder. Note that this step may take several days on a slow network connection. If the download process fails, simply re-run the `dbcreator*` modules - this will resume the process. A more efficient way is to mirror the databases using rsync (see the [dbcreator FAQ](dbcreatorFAQ.md)).

* Convert the files into [BED format](http://genome.ucsc.edu/FAQ/FAQformat.html#format1), [organize](dbcreatorStructure.md) and compress them with [bgzip](http://samtools.sourceforge.net/tabix.shtml). Unsupported data formats are skipped, with warning.

* Place converted files in `[dir]/grsnp_db/[organism]/[group]` folders.

Some genome annotation data may contain non-standard chromosome names, such as *chr1_gl000192_random*, *chr6_ssto_hap7*, *chrUn_gl000248*. These regions will introduce artefacts in the p-value calculations. Therefore, it is a good idea to post-process the database by running:

```
n=$((`find [dir] -type f -name "*.bed.gz" | wc -l`)); i=0; for file in `find [dir] -type f -name "*.bed.gz"`; do f=`basename $file`; d=`dirname $file`; i=$((i+1)); echo "Processing" $i "out of" $n ":" $file; zcat $file | grep "\bchr[0-9XYM][^_]\b" | awk 'BEGIN {OFS="\t"} { if ( $3 <= $2) { print $1, $2, $2+1, $4, $5, $6 } else { print $1, $2, $3, $4, $5, $6 } }' | sort -k1,1 -k2,2n -k3,3n | uniq > $d/${f%???} && rm $file; bgzip ${file%???} && tabix $file; done
```

The logic here is to count the total number of "*.bed.gz"" files, process each file keeping only standard chromosome names (`"\bchr[0-9XYM][^_]\b"` regex). Also,`awk` ensures that the end genomic coordinates are larger than the start coordinates, and adjusts offending lines accordingly. The standardized files are then compressed with `bgzip` and indexed with `tabix`.

The `dbcreator*` modules create log file (genomerunner_dbcreator.log) in the `[dir]` folders.
