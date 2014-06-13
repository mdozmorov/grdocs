


Installing GenomeRunner
========================================================

GenomeRunner depends on many modules and packages. Install them using the `setup.sh` script, sudo privileges required. We tested these installation steps on freshly installed Ubuntu Linux 13.10 (Saucy Salamander), and expect them to work on other Ubuntu flavors. Contact the authors with questions.

To install GenomeRunner locally, clone GenomeRunner's repository locally (`git` must be installed, `sudo apt-get install git`), and run `setup.sh`.


```r
git clone https://github.com/mdozmorov/genome_runner.git
./setup.sh
```


GenomeRunner can be installed as developmental version by chenging the last line of the `setup.sh` file to


```r
sudo python setup.py install develop -d /usr/local/lib/python2.7/dist-packages/
```

