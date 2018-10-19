#!/bin/bash

cd /spigot-server

if [ ! -f spigot-1.13.1.jar ]
then
    cp /spigot-build/spigot-1.13.1.jar /spigot-server/spigot-1.13.1.jar
fi

echo eula=${EULA} > eula.txt
cat eula.txt


java -Xms${MEMORY} -Xmx${MEMORY} -jar spigot-1.13.1.jar
