

server FAQ
========================================================

### * Can I parallelize GenomeRunner's runs?

Yes, you can. GenomeRunner employs [Celery distributed task queue](https://github.com/mher/flower) to run jobs. By default, one worker is started and can handle up to 4 parallel runs. You can increase the number of workers by setting the **-w** flag to the desired number of workers, e.g., 4.

### * Wow! Can I "see" what my workers are doing?

You sure can. Run the following command and visit Celery on [http://localhost:5555](http://localhost:5555)
```
celery flower --broker=redis://localhost:7775/
```

### * I have port 8000 blocked by ~~an evil admin~~ firewall. Can I run GenomeRunner on a different port?

You bet. Simply use **-p** parameter to set any port you wish, e.g., -p 8080.

### * I don't have many ports open. In fact, only port 80 (http) is available on my machine - what shall I do to run GenomeRunner?

A workaround would be to create a redirection rule, and start the server on the redirected port
```
# Redirect port
sudo iptables -t nat -A PREROUTING -i eth0 -p tcp --dport 80 -j REDIRECT --to-port 8080
# Start the server normally
python -m grsnp.server -g hg19 -d [dir1],[dir2],[dir3] -r [dir1] -p 8080
```

### * I have successfully installed and configured GenomeRunner! How can I show it to the world?

Congratulations! If you are asking this question, you are likely behind a firewall. Then, rent a virtual private server (VPS), and redirect GenomeRunner traffic to its tcp port 80 by running locally:

```
autossh -M 0 -nNR 80:localhost:8080 root@server.ip.address
```
Add other ssh-specific parameters, such as `-i ~/.ssh/id_rsa`. Note you should be able to login into remote shell as root.

After redirecting, access GenomeRunner at http://server.ip.address.
