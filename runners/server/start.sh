#!/bin/sh

export MIN_RAM="4000M"
export MAX_RAM="6000M"
export SERVER_JAR="forge-1.12.2-14.23.5.2860.jar"

start_server() {
    java -server -Xms${MIN_RAM} -Xmx${MAX_RAM} -jar ${SERVER_JAR} nogui
}

echo "Starting Herodotus Server..."
start_server
