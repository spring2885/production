# Instructions for setting up a production host.


## Installing Docker.

Visit https://docs.docker.com/engine/installation/ for instructions
on how to install docker for your machine.  Once installed
you can use the shell scripts to build and run your containers.

### Containers:
* frontend - contains the Apache2 server and the frontend code.
* backend - contains the backend server.

MySQL is expected to be installed on your local machine.

## Installing MySQL

We use MySQL 5.7.  Instructions are here:
https://dev.mysql.com/doc/mysql-apt-repo-quick-guide/en/

## Configuring MySQL

MySQL needs to listen on port 0.0.0.0 and not just 127.0.0.1
since the docker container needs to listen to it on the non
loopback IP address.  run.sh sets up the mapping from the
mysql dns entry inside the container to the local IP address.

To update MySQL, typically you edit the /etc/mysql/my.cnf file
and change this:

```
bind-address	= 127.0.0.1
```

to:

```
bind-address	= 0.0.0.0
```
