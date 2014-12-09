FROM ubuntu:14.04.1
MAINTAINER kouse_tomoya@aratana.jp

# Upgrade the system.
RUN apt-get update
RUN apt-get upgrade

# Install dependencies.
RUN apt-get install build-essential git
