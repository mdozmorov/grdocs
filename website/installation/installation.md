

Installing GenomeRunner
========================================================

GenomeRunner depends on many modules and packages. Install them using the `setup.sh` script, sudo privileges required. We tested these installation steps on freshly installed (X)Ubuntu Linux 13.10 (Saucy Salamander) and 14.04 (Thursty Tahr), and expect them to work on other Ubuntu flavors. Contact the author with questions.

To install GenomeRunner locally, clone GenomeRunner's repository locally (`git` must be installed, `sudo apt-get install git`), and run `setup.sh`.

```
git clone https://github.com/mdozmorov/genome_runner.git
sudo ./setup.sh
```

GenomeRunner can be installed as developmental version by changing the last line of the `setup.sh` file to

```
sudo python setup.py install develop -d /usr/local/lib/python2.7/dist-packages/
```

Such installation simplifies debugging by allowing code changes in `genome_runner` folder. These changes will be immediately reflected in the current installation.
