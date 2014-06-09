


Uninstalling GenomeRunner
========================================================

To remove GenomeRunner from your computer, run


```r
sudo python setup.py install --record files.txt
cat files.txt | xargs -i sudo rm -rf {}
```


The first command will collect full paths to the GenomeRunner's files. The second command will remove them. 

Do not forget to remove the main `genome_runner` folder and any database folders you may have created.
