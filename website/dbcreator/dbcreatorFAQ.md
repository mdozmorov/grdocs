


dbcreator FAQ
========================================================

* How do I install databases for multiple organism?

> Simply re-run the `dbcreator` and designate a different organism code with the **-g** parameter.

* Can I run the `dbcreator` on an existing database?

> Yes, the `dbcreator` skips GFs that have already been installed.

* The `dbcreator` is taking a long time to run. Can I 'kill' it?

> Yes, and you can restart it later. The `dbcreator` flags partially completed GFs with a '.tmp' extension. These GFs are not visible to the server, and will be installed correctly upon the next run.

* Can I download individual GFs?

> Individual GFs can be installed by giving the name to the **-f** parameter (i.e '-f knownGene' ).

* Can I simply download all UCSC data and let the `dbcreator` work with it?

> In fact, this is the recommended way of download the data. Rsync can be used to mirror the USCS data files. Simply create `[dir]/downloads/` folder and execute:


```r
rsync -avzP rsync://hgdownload.cse.ucsc.edu/goldenPath/hg19/database/* .
```


> The `dbcreator` skips download of a GF file if it finds it in the `[dir]/downloads/` folder.
