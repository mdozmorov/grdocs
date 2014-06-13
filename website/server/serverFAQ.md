


server FAQ
========================================================

* Can I parallelize GenomeRunner's runs?

> Yes, you can. GenomeRunner employs [Celery distributed task queue](https://github.com/mher/flower) to run jobs. By default, one worker is started and can handle up to 4 parallel runs. You can increase the number of workers by setting the **-w** flag to the desired number of workers, e.g., 4.

* Wow! Can I "see" what my workers are doing?

> You sure can. Run the following command and visit Celery on [http://localhost:5555](http://localhost:5555)

```r
celery flower --broker=redis://localhost:7775/
```


* I have port 8000 blocked by ~~evil admin~~ firewall. Can I run GenomeRunner on a different port?

> You bet. Simply use **-p** patameter to set any port you wish, e.g., -p 8080.

* I don't have many ports open. In fact, only port 80 (http) is available on my machine - what shall I do to run GenomeRunner?

> A workaround would be to create a redirection rule, and start the server on the redirected port

```r
# Redirect port
sudo iptables -t nat -A PREROUTING -p tcp --dport 80 -j REDIRECT --to-ports 8080
# Start the server normally
python -m grsnp.server -g hg19 -d [dir1],[dir2],[dir3] -r [dir1] -p 8080
```

