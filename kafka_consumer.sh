#!/bin/bash

if [ $# -ne 1 ]; then
	echo: "Usage $1 <Nom_du_script>"
	exit 1
fi

topic=$1

/usr/local/Cellar/kafka/3.6.1/bin/kafka-console-consumer --bootstrap-server localhost:9092 --topic $topic
