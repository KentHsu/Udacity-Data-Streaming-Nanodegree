# Project: Optimizing Public Transportation
This project constructs a **streaming event pipeline** around **Apache Kafka** and its ecosystem. Using public data from the [Chicago Transit Authority](https://www.transitchicago.com/data/). We will construct an event pipeline around Kafka that allows us to simulate and display the status of train lines in real time.


## Project Architecture
The Chicago Transit Authority (CTA) has asked us to develop a dashboard displaying system status for its commuters. We have decided to use Kafka and ecosystem tools like REST Proxy and Kafka Connect to accomplish this task.

Our architecture will look like so:

![alt text](https://github.com/KentHsu/Udacity-Data-Streaming-Nanodegree/blob/main/Optimizing%20Public%20Transportation/images/Project-Architecture.png)



## Project Structure

```
Optimizing Public Transportation
|____README.md
|____startup.sh
|
|____ producer
| |____ __init__.py
| |____ connector.py                 * Kafka Connect to Postgres
| |____ simulation.py
| |____ logging.ini
| |____ requirements.txt
| |
| |____ data                         * Data for simulation
| | |____ ridership_curve.csv
| | |____ cta_stations.csv
| | |____ README.md
| | |____ ridership_seed.csv
| |
| |____ models                       * Define Kafka Producer
| | |____ __init__.py
| | |____ producer.py
| | |____ station.py
| | |____ turnstile.py
| | |____ weather.py
| | |____ turnstile_hardware.py
| | |____ line.py
| | |____ train.py
| | |
| | |____ schemas                    * Define Avro schema
| | | |____ arrival_key.json
| | | |____ arrival_value.json
| | | |____ turnstile_key.json
| | | |____ turnstile_value.json
| | | |____ weather_value.json
| | | |____ weather_key.json
|
|____ consumer
| |____ __init__.py
| |____ server.py                    * Server for running Web UI
| |____ logging.ini
| |____ requirements.txt
| |____ topic_check.py
| |____ faust_stream.py              * Using Faust to tranform station data
| |____ consumer.py
| |____ ksql.py                      * Using KSQL to transform turnstile data
| |____ templates
| | |____ status.html
| |
| |____ models                       * Define Kafka Consumer
| | |____ __init__.py
| | |____ line.py
| | |____ weather.py
| | |____ lines.py
| | |____ station.py
```

## Running and Testing

* To run the producer
	1. ```cd producer```
	2. ```python simulation.py```

* To run the Faust Stream Processing Application
	1. ```cd consumer```
	2. ```faust -A faust_stream worker -l info```

* To run the KSQL Creation Script
	1. ```cd consumer```
	2. ```python ksql.py```

* To run the consumer
	1. ```cd consumer```
	2. ```python server.py```

![alt text](https://github.com/KentHsu/Udacity-Data-Streaming-Nanodegree/blob/main/Optimizing%20Public%20Transportation/images/URL.png)

* The Web UI should look like this:
![alt text](https://github.com/KentHsu/Udacity-Data-Streaming-Nanodegree/blob/main/Optimizing%20Public%20Transportation/images/Status-Page.png)