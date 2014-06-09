


dbcreator FAQ
========================================================

* How do I install databases for multiple organism?

> Simply re-run the `dbcreator` module and designate a different organism code with the **-g** parameter.

* Can I run the `dbcreator` module on an existing database?

> Yes, the `dbcreator` module skips GFs that have already been installed.

* The `dbcreator` module is taking a long time to run. Can I terminate it?

> Yes, and you can restart it later. The `dbcreator` module flags partially completed GFs with a '.tmp' extension. These GFs are not visible to the `server` module, and will be installed correctly upon the next run.

* Can I download individual GFs?

> Individual GFs can be installed by giving the name to the **-f** parameter (i.e `-f knownGene`).

* Can I simply download all UCSC data and let the `dbcreator` module work with it?

> In fact, this is the recommended way. Rsync can be used to mirror the USCS data files. Simply create `[dir]/downloads/` folder and execute the following command within it:


```r
rsync -avzP rsync://hgdownload.cse.ucsc.edu/goldenPath/hg19/database/* .
```


> Remember that rsync is not infallible. To automatically restart broken transfers, check [source code](https://github.com/mdozmorov/genome_runner/tree/master/commandline) for `autorsync.sh` script in the `commandline` folder.
