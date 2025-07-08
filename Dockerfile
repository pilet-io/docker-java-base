FROM ubuntu:24.04

RUN apt update
RUN apt install -y openssh-client
RUN apt install -y openjdk-21-jdk