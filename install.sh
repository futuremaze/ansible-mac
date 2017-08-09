#!/bin/bash

# Install Command Line Tools for Xcode.
xcode-select --install

# Install Homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Install andible
brew install ansible git

# Provision.
mkdir ~/.provision
cd !$
git clone https://github.com/futuremaze/ansible-mac.git .
ansible-playbook ./localhost.yml
