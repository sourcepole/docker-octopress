FROM ubuntu:14.04.1
MAINTAINER kouse_tomoya@aratana.jp

# Upgrade the system.
RUN apt-get update
RUN apt-get upgrade -y

# Install dependencies.
RUN apt-get install -y build-essential git curl libssl-dev libunistring-dev openssh-client nodejs

# Create a new user for Octopress.
ADD add-user.bash /tmp/docker-build/
RUN bash /tmp/docker-build/add-user.bash

# Install rbenv and ruby-build plugin.
USER octopress
ADD install-rbenv.bash /tmp/docker-build/
RUN bash /tmp/docker-build/install-rbenv.bash

# Install ruby.
ADD install-ruby.bash /tmp/docker-build/
RUN bash /tmp/docker-build/install-ruby.bash

# Install Octopress
ADD install-octopress.bash /tmp/docker-build/
RUN bash /tmp/docker-build/install-octopress.bash
