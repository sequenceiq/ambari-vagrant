# Ambari on Vagrant

This project helps to set up a 3 node ambari cluster on vagrant.
It's started from the apache [Quick Start Guide](https://cwiki.apache.org/confluence/display/AMBARI/Quick+Start+Guide)
, but got modified

At the end there qill be 3 nodes:

- c6401 : ambar-server + ambari-agent connecting to himself
- c6402 : ambari-agent connecting to c6401
- c6403 : ambari-agent connecting to c6401

## start 3 nodes

Start up 3 nodes, they will provosion ambari agent connecting
```
git clonegit@github.com:sequenceiq/ambari-vagrant.git
cd ambari-vagrant
vagrant up
```

## start ambari server
```
vagrant ssh c6401 -c "sudo bash -c 'yum install ambari-server -y && ambari-server setup -s && ambari-server start' "
```

## deploy cluster with ambari

Since ambari 1.5 there is a new way to declaratively specify your cluseter, called
[Blueprints](https://cwiki.apache.org/confluence/display/AMBARI/Blueprints)
