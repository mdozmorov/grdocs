

Installing GenomeRunner
========================================================

GenomeRunner depends on many modules and packages. Install them using the `setup.sh` script, sudo privileges required. These installation steps were tested on freshly installed Ubuntu Linux 13.10 (Saucy Salamander), 14.04 (Thursty Tahr), 14.10 (Utopic Unicorn), and expect them to work on other Ubuntu flavors. Contact the author with questions.

To install GenomeRunner locally, clone GenomeRunner's repository locally (`git` must be installed, `sudo apt-get install git`), and run `setup.sh`.

```
git clone https://github.com/mdozmorov/genome_runner.git
sudo ./setup.sh
```

Advanced installation options
-------------------------------
GenomeRunner can be installed as developmental version by changing the last line of the `setup.sh` file to

```
sudo python setup.py install develop -d /usr/local/lib/python2.7/dist-packages/
```

Such installation simplifies debugging by allowing code changes in the `genome_runner` folder. These changes will be immediately reflected in the current installation.
