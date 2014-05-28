


server, a module to run web interface
========================================================

Before starting the web server, ensure you've created the [database](../dbcreator/dbcreator.md) and have at least one  [background file](../dbcreator/dbcreatorBackground.md).

We start the web interface as:


```r
python -m grsnp.server -g hg19 -d [dir1],[dir2],[dir3] -r [dir1]
```


where the **-d** parameter accepts a single or comma-separated *full paths* to the databases. The **-r** parameter specifies the path to the `results` folder.

Access GenomeRunner on [http://localhost:8000/gr/](http://localhost:8000/gr/). 

The `server` module should create a log file (genomerunner_server.log) in the `[dir]` folder - study it for troubleshooting.
