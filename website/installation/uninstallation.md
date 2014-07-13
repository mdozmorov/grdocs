

Uninstalling GenomeRunner
========================================================

To remove GenomeRunner from your computer, run

```
sudo python setup.py install --record files.txt
sudo rm -rf `cat files.txt`
```

The first command will collect full paths to GenomeRunner's files. The second command will remove them. 

Do not forget to remove the main `genome_runner` folder and any database folders you may have created.
