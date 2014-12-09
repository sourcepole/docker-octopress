#!/bin/bash

source ~/.profile

# Clone from the repository.
git clone git://github.com/imathis/octopress.git ~/octopress 
cd ~/octopress

# Install dependencies.
gem install bundler
rbenv rehash
bundle install

# Install the default Octopress theme.
rake install
