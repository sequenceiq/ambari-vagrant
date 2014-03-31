# Ambari on Vagrant

This project helps to set up a 3 node ambari cluster on vagrant.
It's started from the apache [Quick Start Guide](https://cwiki.apache.org/confluence/display/AMBARI/Quick+Start+Guide)
, but got modified


```
git clonegit@github.com:sequenceiq/ambari-vagrant.git
cd ambari-vagrant
./up.sh 3
```

```
vagrant ssh c6401 -c "sudo bash -c 'yum install ambari-server -y && ambari-server setup -s && ambari-server start' "
```
