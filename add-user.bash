#!/bin/bash

useradd -m -g users octopress
gpasswd -a octopress sudo
echo "octopress:octopress" | chpasswd
