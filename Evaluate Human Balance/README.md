# Project: Evaluate Human Balance

This project works with a real-life application called the Step Trending Electronic Data Interface (STEDI) used to assess fall risk for seniors. When a senior takes a test, they are scored using an index which reflects the likelihood of falling, and potentially sustaining an injury in the course of walking.

## The Data
The STEDI data science team has configured some real-time data sources using Kafka Connect. One of those data sources is **Redis** for risk score and other data. Redis is configured as a Kafka source and whenever any data is saved to Redis (including Customer information), a payload is published to the Kafka topic called redis-server.

The STEDI application development team has programmed certain business events to be published automatically to **Kafka**. Whenever a customer takes an assessment, their risk score is generated, as long as they have four or more completed assessments. The risk score is transmitted to a Kafka topic called stedi-events 

## The Challenge
The application development team was not able to complete the feature as the graph is currently not receiving any data. Because the graph is currently not receiving any data, you need to generate a new payload in a Kafka topic and make it available to the STEDI application to consume. All these processes will be conducted via **Spark Streaming** API.


## Project Architecture

![alt text](https://github.com/KentHsu/Udacity-Data-Streaming-Nanodegree/blob/main/Evaluate%20Human%20Balance/images/Project-Architecture.png)



## Project Structure

```
Evaluate Human Balance
|____Guide.ipynb
|____sparkpyrediskafkastreamtoconsole.py    # Spark streaming script
|____sparkpyeventskafkastreamtoconsole.py   # Spark streaming script
|____sparkpykafkajoin.py                    # Spark streaming script
|____submit-redis-kafka-streaming.sh
|____submit-event-kafkastreaming.sh
|____submit-event-kafkajoin.sh
|
|____stedi-application
| |____application.conf                     # Set up customized Kafka topic
| |____stop.sh
| |____start.sh
|
|____Spark
| |____logs                                 # Result logs
| | |____redisstream.log
| | |____eventstream.log
| | |____kafkajoin.log
| | |____spark--org.apache.spark.deploy.master.Master-1-53eda89c49aa.out
| | |____spark--org.apache.spark.deploy.worker.Worker-1-53eda89c49aa.out
|
|____screenshots                            # Application working screenshots
| |____screenshot 2.jpg
| |____screenshot 1.jpg
```

## Application UI

![alt text](https://github.com/KentHsu/Udacity-Data-Streaming-Nanodegree/blob/main/Evaluate%20Human%20Balance/screenshots/screenshot-2.jpg)