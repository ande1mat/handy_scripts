#!/bin/bash

#COMMENTS
#THIS IS A SCRIPT TO SAVE TIME AND RUN KAFKA ZOOKEEPER + SERVER LOCALLY AND START THEM UP
# step 1 - create the shell script and make it an executiable and get authorization for that
# 	sudo chmod +x kafkastartup.sh
# step 2 - Write the contents of what you want it to do
# step 3 - Run the shell script from the directory

mydate=$(date)
greet="Hello this is my kafka shutdown shell script...."

echo $greet
echo "This script is about to stop Kafka Zookeeper and Kafka Server on $mydate"

#shutdown kafka servers locally where you have Kafka installed

sh ./kafka_2.13/bin/kafka-server-stop.sh
echo "Kafka Server is now stopped!"
sh ./kafka_2.13/bin/zookeeper-server-stop.sh
echo "Kafka Zookeeper is now stopped!"