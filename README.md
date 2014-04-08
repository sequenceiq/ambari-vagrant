# Ambari on Vagrant

This project helps to set up a 3 node (up to 10) Ambari cluster on Vagrant.
Started from the Apache Ambari [Quick Start Guide](https://cwiki.apache.org/confluence/display/AMBARI/Quick+Start+Guide) and modified.

Using this will produce 3 nodes:

- **c6401** : ambar-server + ambari-agent connecting to himself
- **c6402** : ambari-agent connecting to c6401
- **c6403** : ambari-agent connecting to c6401

## Requirements

You need [VirtualBox](https://www.virtualbox.org/) and [Vagrant](http://www.vagrantup.com/)

## start 3 nodes

Starts up 3 nodes, provosioning nodes with ambari agents connecting to the master **c6401**
```
git clonegit@github.com:sequenceiq/ambari-vagrant.git
cd ambari-vagrant
vagrant up
```

## deploy cluster with ambari

Since Ambari 1.5 there is a new way to declaratively specify your cluseter, called
[Blueprints](https://cwiki.apache.org/confluence/display/AMBARI/Blueprints)

```
./blueprint-3-node.sh
```
