export SPARK_HOME=/data/spark
$SPARK_HOME/bin/spark-submit --packages org.apache.spark:spark-sql-kafka-0-10_2.11:2.4.6 /home/workspace/sparkpykafkajoin.py | tee /home/workspace/spark/logs/kafkajoin.log 
