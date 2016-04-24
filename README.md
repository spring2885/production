# production
Scripts to be used on production hosts

## Directories

* setup - contains instructions and scripts used to setup
  a production host.
* bin - scripts used on an existing production host.

Note: production host means both staging and www.


## bin scripts.

## Pulling new builds from GCR.

### pull.sh

New builds from GCR can be pulled into the production machines with
the following commands:

```
sudo gcloud docker pull  us.gcr.io/spring2885-cloud/spring2885-backend
sudo gcloud docker pull  us.gcr.io/spring2885-cloud/spring2885-frontend
```

The script ```pull.sh``` will do this for you.

To update the server, you must kill and rm the old container ID.  The container ID
is the first column displayed from the output of ```docker ps```.

Example.

```
sudo docker ps

CONTAINER ID        IMAGE                                            COMMAND                  CREATED             STATUS              PORTS                                      NAMES
5a7c9e77809f        us.gcr.io/spring2885-cloud/spring2885-backend    "java -Djava.security"   29 hours ago        Up 29 hours         0.0.0.0:8080->8080/tcp                     spring2885-backend
f5dea6d0f8f4        us.gcr.io/spring2885-cloud/spring2885-frontend   "httpd-foreground"       30 hours ago        Up 30 hours         0.0.0.0:80->80/tcp, 0.0.0.0:443->443/tcp   spring2885-frontend

sudo docker kill 5a7c9e77809f f5dea6d0f8f4 \
  && sudo docker rm 5a7c9e77809f f5dea6d0f8f4 \
  && ./run-backend.sh \
  && ./run-foreground.sh

 ```




