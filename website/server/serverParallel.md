

Parallelizing the server module
========================================================
The `server` module can either be run on a single machine, or its tasks can be distributed among multiple machines. [Celery distributed task queue](http://www.celeryproject.org/) with [Redis](http://redis.io/) backend are used to parallelize the `server` module, set up similarly to the [optimizer](../optimizer/optimizerParallel.md) module.

The host and the remote machines should have access to the identical [databases](../dbcreator/dbcreator_ucsc.md). The host and the remote machines should have access to **THE SAME RESULTS FOLDER**, best to be set up on a network drive.

Setting up
-----------
The following installation steps assume:
* you have multiple Linux computers within the same network and selected one to be the host computer;
* GenomeRunner has been installed in [developer mode](../installation/installation.md);
* The [database](../dbcreator/dbcreator_ucsc.md) and the [background](../dbcreator/dbcreatorBackground.md) have been created and mirrored among the computers.
* The `results` folder is available to the host and the remote machines

Check the host computer' IP address by running `ifconfig` command.
```
$ ifconfig
eth0      Link encap:Ethernet  HWaddr 76:21:00:f4:56:c2  
          inet addr:10.84.XXX.XXX  Bcast:10.84.XXX.XXX  Mask:255.255.XXX.X
```
Note the inet addr:**10.84.XXX.XXX** number. Add this number in `celeryconfiguration.py` file on the host and remote computers:
```
BROKER_URL = "redis://10.84.XXX.XXX:{}/".format(redis_port) + db_num
```

Start the `server` module on the host computer:
```
python -m grsnp.server -g [org] -d [dir1],[dir2] -r [path/to/shared/results/folder] -w 0
```
The **-w 0** argument prohibits the host computer to run workers locally. If sufficient CPU power is avaliable on the host machine, it is OK to set up **-w** argument to "1".

Note the **-r** argument specifying path to the shared results folder.

The **-d** argument takes comma-separated paths to the databases.

Now, start a celery worker on a remote machine:
```
celery worker --app=grsnp.worker_hypergeom4 --d [dir1],[dir2] -r [path/to/shared/results/folder] --loglevel INFO -E
```
At that time, this worker should start running server jobs. Start workers on the other remote machines. The workers now will run different server jobs, and their results will be assembled by the host computer.

Tips
-----
Monitor Celery workers on the host computer via web interface on [http://localhost:5555](http://localhost:5555):
```
celery flower --broker=redis://localhost:7775/
```

Monitor Celery workers on the host computer via command line:
```
celery inspect active --broker redis://localhost:7775/0
celery inspect active_queues -b redis://localhost:7775/0
```

Stop all workers:
```
ps auxww | grep 'celery worker' | awk '{print $2}' | xargs kill -9
```

Start redis command line utility:
```
redis-cli
```

Get keys of all workers:
```
redis-cli -h localhost -p 7775 keys \*
```

Get worker-specific messages from redis:
```
GET celery-task-meta-34a5c7a6-f7d6-4c19-ae6c-e8057664f33d
```
