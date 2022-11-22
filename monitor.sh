#!/bin/sh

exec 1>monitor.log 2>&1

monitor() {
    date
    time conda run -n omnisci-dev mvn clean compile
    sleep 30
}

while true
do
    monitor
done &

echo $! >monitor.pid

