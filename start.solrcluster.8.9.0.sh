#!/usr/bin/env bash

export SOLR_BASE_CLUSTER=/usr/local/swissbib/solr/8.9.0

export ZK_BASE=$SOLR_BASE_CLUSTER/zoo

export ZK_RUN=$ZK_BASE/bin

export SOLR_BASE=$SOLR_BASE_CLUSTER/solr


export SOLR_RUN=$SOLR_BASE/bin


export SOLR_DATA_CLUSTER=/mnt/platte2/solresdata/solr/8.9.0
export SOLR_HOME1=$SOLR_DATA_CLUSTER/node1
export SOLR_HOME2=$SOLR_DATA_CLUSTER/node2

export ZK_HOST='localhost:6666'




cd $ZK_RUN;
./zkServer.sh start

echo "sleep 2 seconds..."
sleep 2 

cd $SOLR_RUN; ./solr start -c -t $SOLR_HOME1 -p 9090 -z ${ZK_HOST}
cd $SOLR_RUN; ./solr start -c -t $SOLR_HOME2 -p 9091 -z ${ZK_HOST}
