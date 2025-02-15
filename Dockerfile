FROM ubuntu:24.04

RUN apt update
RUN apt install -y openssh-client openjdk-17-jdk