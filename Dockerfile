FROM ubuntu:14.04.1
MAINTAINER kouse_tomoya@aratana.jp

# Upgrade the system.
RUN apt-get update
RUN apt-get upgrade

# Install dependencies.
RUN apt-get install -y build-essential git curl libssl-dev

# Create a new user for Octopress.
RUN useradd -m -g users octopress
RUN gpasswd -a octopress sudo
RUN echo "octopress:octopress" | chpasswd

# Install rbenv and ruby-build plugin.
USER octopress
RUN git clone https://github.com/sstephenson/rbenv.git ~/.rbenv
RUN git clone https://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build
RUN echo '' >> ~/.profile
RUN echo '# Initialize "rbenv".' >> ~/.profile
RUN echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.profile
RUN echo 'eval "$(rbenv init -)"' >> ~/.profile

# Install ruby.
ADD install-ruby.bash /tmp/docker-build/
RUN bash /tmp/docker-build/install-ruby.bash
