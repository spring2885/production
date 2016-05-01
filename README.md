# production
Scripts to be used on production hosts

## Directories

* setup - contains instructions and scripts used to setup
  a production host.
* bin - scripts used on an existing production host.

Note: production host means both staging and www.


## bin scripts.

## Updating the running servers (staging and www).

The ```update_all.sh``` script is really the only one you need. It invokes
the other scripts as-needed in the bin directory.  Please take a moment
to read through the scripts to understand what they do.

### update_all.sh

```
$ ./update_all.sh 
Pulling new iamge locally
Warning: '--email' is deprecated, it will be removed soon. See usage.
Login Succeeded
Warning: '--email' is deprecated, it will be removed soon. See usage.
Login Succeeded
Warning: '--email' is deprecated, it will be removed soon. See usage.
Login Succeeded
Warning: '--email' is deprecated, it will be removed soon. See usage.
Login Succeeded
Warning: '--email' is deprecated, it will be removed soon. See usage.
Login Succeeded
Warning: '--email' is deprecated, it will be removed soon. See usage.
Login Succeeded
Warning: '--email' is deprecated, it will be removed soon. See usage.
Login Succeeded
Using default tag: latest
latest: Pulling from spring2885-cloud/spring2885-backend
4d06f2521e4f: Already exists 
bd7cff740b5f: Already exists 
a3ed95caeb02: Already exists 
2f850ce32999: Already exists 
9383266c377a: Pull complete 
a92ac35795a9: Pull complete 
Digest: sha256:9e26ea8d6ec969a86fa968d7a9b8f3028f5a1c9a2a09dec389eba0bef88e3d44
Status: Downloaded newer image for us.gcr.io/spring2885-cloud/spring2885-backend:latest
Warning: '--email' is deprecated, it will be removed soon. See usage.
Login Succeeded
Warning: '--email' is deprecated, it will be removed soon. See usage.
Login Succeeded
Warning: '--email' is deprecated, it will be removed soon. See usage.
Login Succeeded
Warning: '--email' is deprecated, it will be removed soon. See usage.
Login Succeeded
Warning: '--email' is deprecated, it will be removed soon. See usage.
Login Succeeded
Warning: '--email' is deprecated, it will be removed soon. See usage.
Login Succeeded
Warning: '--email' is deprecated, it will be removed soon. See usage.
Login Succeeded
Using default tag: latest
latest: Pulling from spring2885-cloud/spring2885-frontend
fdd5d7827f33: Already exists 
a3ed95caeb02: Already exists 
6dda107bf71b: Already exists 
86e2da0d8a9f: Already exists 
6acf2ff123fe: Already exists 
94a268baee66: Already exists 
351c80cb46cb: Already exists 
c4cc9fca2069: Already exists 
21f9c1618287: Already exists 
b51176d23413: Pull complete 
Digest: sha256:891ea7053ca24917bac2e5968555c3504b10b2ac3cc744d8a915748969bc67d8
Status: Downloaded newer image for us.gcr.io/spring2885-cloud/spring2885-frontend:latest
Killing and removing existing server.
2f086637700d
0b4abbe5bd37
2f086637700d
0b4abbe5bd37
CONTAINER ID        IMAGE               COMMAND             CREATED             STATUS              PORTS               NAMES
Restarting servers
Local IP address: 10.128.0.3
Starting docker backend container
550b704c4273a224e1c2566d1f9e7135273835f53d77de136442e046c8181654
2d63092013bf1911fc4f06a09ce86e4cf8d05eff7dd58b5da552b80c65869e32
```

Now look at the logs from the backend to ensure you see a line like the
following to let you know the backend server has successfully started. Once you
see it, control-C the command.  Now check the site with a web browser and
you are done.

```
$ sudo docker logs -f 550b704c4273a224e1c2566d1f9e7135273835f53d77de136442e046c8181654

…

2016-05-01 14:45:49.790  INFO 1 --- [           main] org.spring2885.server.ServerApplication  : Started ServerApplication in 17.751 seconds (JVM running for 18.868)

```
