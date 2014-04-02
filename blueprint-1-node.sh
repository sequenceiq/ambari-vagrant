AMBARI_URL=localhost:49154
########################
# create the BLUEPRINT
########################
curl -H "X-Requested-By: ambari" -u admin:admin http://$AMBARI_URL/api/v1/blueprints/single-node-hdfs-yarn -d @- <<EOF
{
  "host_groups" : [
    {
      "name" : "host_group_1",
      "components" : [
      {
        "name" : "NAMENODE"
      },
      {
        "name" : "SECONDARY_NAMENODE"
      },
      {
        "name" : "DATANODE"
      },
      {
        "name" : "HDFS_CLIENT"
      },
      {
        "name" : "RESOURCEMANAGER"
      },
      {
        "name" : "NODEMANAGER"
      },
      {
        "name" : "YARN_CLIENT"
      },
      {
        "name" : "HISTORYSERVER"
      },
      {
        "name" : "MAPREDUCE2_CLIENT"
      },
      {
        "name" : "ZOOKEEPER_SERVER"
      },
      {
        "name" : "ZOOKEEPER_CLIENT"
      }
      ],
      "cardinality" : "1"
    }
  ],
  "Blueprints" : {
    "blueprint_name" : "single-node-hdfs-yarn",
    "stack_name" : "HDP",
    "stack_version" : "2.0"
  }
}
EOF

########################
# create the cluster
########################

curl -H "X-Requested-By: ambari" -u admin:admin http://$AMBARI_URL/api/v1/clusters/MySingleNodeCluster -d @- <<EOF
{
  "blueprint" : "single-node-hdfs-yarn",
  "host-groups" :[
    {
      "name" : "host_group_1",
      "hosts" : [
        {
          "fqdn" : "ambari.vmati.com"
        }
      ]
    }
  ]
}
EOF


## check status
curl -s -u admin:admin -H "X-Requested-By: ambari" "http://$AMBARI_URL/api/v1/clusters/MySingleNodeCluster/requests/1?fields=tasks/Tasks/*"|jq ".tasks[].Tasks| [.id, .status,  .command_detail] " -c
