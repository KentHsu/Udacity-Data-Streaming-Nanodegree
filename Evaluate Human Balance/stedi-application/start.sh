#!/bin/bash
java -Dconfig=/home/workspace/stedi-application/application.conf -jar /data/stedi-application/StepTimerWebsocket-1.0-SNAPSHOT.jar > /home/workspace/stedi-application/stedi.log 2>&1 &