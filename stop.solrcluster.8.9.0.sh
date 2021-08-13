#!/usr/bin/env bash


export SOLR_BASE_CLUSTER=/usr/local/swissbib/solr/8.9.0
export SOLR_BASE=$SOLR_BASE_CLUSTER/solr
export SOLR_RUN=$SOLR_BASE/bin


#export SOLR_DATA_CLUSTER=/mnt/platte2/solresdata/solr/7.3.1/solr
#export SOLR_HOME1=$SOLR_DATA_CLUSTER/node1
#export SOLR_HOME2=$SOLR_DATA_CLUSTER/node2




export ZK_BASE=$SOLR_BASE_CLUSTER/zoo
export ZK_RUN=$ZK_BASE/bin


cd $SOLR_RUN; ./solr stop -all 


cd $ZK_RUN;
./zkServer.sh stop 




