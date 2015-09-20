## Docker-Mongo-Monary
This Dockerfile creates a Debian Wheezy derived base image which installs 
Monary over MongoDB official Docker image (with Mongo C Driver compiled). This is for testing purposes.

Monary provides a Python interface for fast column queries from MongoDB. 
It is much faster than PyMongo for large bulk reads from the database into NumPy‘s ndarrays.

https://monary.readthedocs.org/index.html

## Building image clonning this repository
Build image (and run container):

```bash
$ docker build -t geographica/mongo-monary:latest .
```


