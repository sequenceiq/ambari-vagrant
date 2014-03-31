# Ambari on Vagrant

This project helps to set up a 3 node ambari cluster on vagrant.
It's started from the apache [Quick Start Guide](https://cwiki.apache.org/confluence/display/AMBARI/Quick+Start+Guide)
, but got modified

At the end there qill be 3 nodes:

- **c6401** : ambar-server + ambari-agent connecting to himself
- **c6402** : ambari-agent connecting to c6401
- **c6403** : ambari-agent connecting to c6401

## Requirements

You need [VitrtualBox](https://www.virtualbox.org/) and [vagrant](http://www.vagrantup.com/)

## start 3 nodes

Start up 3 nodes, they will provosion ambari agent connecting to the master **c6401**
```
git clonegit@github.com:sequenceiq/ambari-vagrant.git
cd ambari-vagrant
vagrant up
```

## deploy cluster with ambari

Since ambari 1.5 there is a new way to declaratively specify your cluseter, called
[Blueprints](https://cwiki.apache.org/confluence/display/AMBARI/Blueprints)

```
./blueprint-3-node.sh
```
