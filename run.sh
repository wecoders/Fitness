#!/bin/sh
RES_DIR=/Users/feilaoda/Documents/workspace/Fitness/src/main/resources
JAVA_OPTS="-Xms768M -Xmx2048M -XX:+UseConcMarkSweepGC -XX:+UseCMSInitiatingOccupancyOnly -XX:CMSInitiatingOccupancyFraction=65  -XX:+HeapDumpOnOutOfMemoryError" 

#-Dcom.sun.management.jmxremote.authenticate=false -Dcom.sun.management.jmxremote.ssl=false 
#java $JAVA_OPTS  -Dloader.home="/Users/feilaoda/Documents/workspace/Fitness/src/main/resources" -Dloader.config.location="file://src/main/resources/application.properties" 
java -Dloader.path="./src/main/resources" -jar target/Fitness-1.0.jar
# -classpath "./src/main/resources/*:./target/dependency/*:./target/*" com.ttd.fitness.FitnessApp


