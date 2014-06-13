


Command line module
========================================================

GenomeRunner can be executed in command line mode by using the `hypergeom4` module. As with the [`server` module](../server/server.md), create the [database](../dbcreator/dbcreator.md) and define at least one [custom background](../dbcreator/dbcreatorBackground.md).

There are 3 mandatory arguments:
- `fois.txt` - a text file containing paths to the sets of SNPs of interest. This file should contain at least one path. Example:

```r
/home/testuser/db_4.10_05.12.2014/custom_data/fois/hg19/GWASmore15new/bone_mineral_density.bed
/home/testuser/db_4.10_05.12.2014/custom_data/fois/hg19/GWASmore15new/endometriosis.bed
/home/testuser/db_4.10_05.12.2014/custom_data/fois/hg19/GWASmore15new/intelligence.bed
/home/testuser/db_4.10_05.12.2014/custom_data/fois/hg19/GWASmore15new/colorectal_cancer.bed
```

- `gfs.txt` - a text file with paths to the genomic features to be used for the analysis. Again, provide at least one path. Example:

```r
/home/testuser/db_4.10_05.12.2014/grsnp_db/hg19/ENCODE/BroadHistone/Tier1/Gm12878/wgEncodeBroadHistoneGm12878H3k4me3StdPk.bed.gz
/home/testuser/db_4.10_05.12.2014/grsnp_db/hg19/ENCODE/BroadHistone/Tier1/Gm12878/wgEncodeBroadHistoneGm12878H3k27acStdPk.bed.gz
/home/testuser/db_4.10_05.12.2014/grsnp_db/hg19/ENCODE/BroadHistone/Tier1/Gm12878/wgEncodeBroadHistoneGm12878H3k4me1StdPk.bed.gz
```

- path to the background file. Example:

```r
/home/testuser/db_4.10_05.12.2014/custom_data/backgrounds/hg19/1snp138Common.bed.gz
```


Execute the `hypergeom4` module like:

```r
python -m grsnp.hypergeom4 fois.txt gfs.txt /home/testuser/db_4.10_05.12.2014/custom_data/backgrounds/hg19/1snp138Common.bed.gz
```


Use the following arguments to tweak the analysis:
- **--output_dir**, or **-d** - path to folder where the results will be outputted. Default: current folder
- **--pv_adjust**, or ""-v** - method for p-value adjustment. Default: None. Possible values: bonferroni, holm, hochberg, hommel, BH, BY, fdr, None.
- **--run_annotation**, or **-a** - for each set of SNPs, annotates each SNP for co-localization with genomic features from the `gfs.txt` file.

Use the aforementioned arguments as follows:

```r
python -m grsnp.hypergeom4 fois.txt gfs.txt /home/testuser/db_4.10_05.12.2014/custom_data/backgrounds/hg19/1snp138Common.bed.gz --output_dir test --pv_adjust fdr --run_annotation
```


The `hypergeom4` modules creates log file (gr_log.txt) in the output folder with the other results.