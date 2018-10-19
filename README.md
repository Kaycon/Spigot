# Docker Spigot
This Dockerfile allows you to build a Spigot Server.

## Build Image
docker build -t kaycon/spigot .

## Start Container
`docker run -d -p 25565:25565 -p 25575:25575 -v /your/path/on/host:/spigot-server -e EULA="true" -e MEMORY="4G" --name Spigot-Server kaycon/spigot`
