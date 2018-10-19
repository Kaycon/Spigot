FROM debian:stretch-slim

MAINTAINER Kaycon "kaycon1@web.de"

ENV EULA=TRUE
ENV MEMORY=2G

EXPOSE 25565

RUN mkdir /spigot-server
RUN mkdir /spigot-build
RUN mkdir /spigot-utils

WORKDIR /spigot-build

#Dumb jdk fixxes
RUN mkdir -p /usr/share/man/man1

RUN apt-get update -y
RUN apt-get install git wget openjdk-8-jdk -y

RUN wget https://hub.spigotmc.org/jenkins/job/BuildTools/77/artifact/target/BuildTools.jar

RUN java -jar BuildTools.jar --rev 1.13.1

VOLUME /spigot-server

COPY mcstart.sh /spigot-utils/mcstart.sh

CMD bash /spigot-utils/mcstart.sh
