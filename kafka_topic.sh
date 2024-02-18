#!/bin/bash

if [ $# -ne 1 ]; then
	echo "Usage $0 <nom_du_topic>"
	exit 1
fi

topic=$1


/usr/local/Cellar/kafka/3.6.1/bin/kafka-topics --create --bootstrap-server localhost:9092 --replication-factor 1 --partitions 1 --topic $topic
