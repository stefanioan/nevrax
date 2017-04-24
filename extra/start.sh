#!/bin/bash
sudo apt-add-repository -y ppa:ansible/ansible
sudo apt-get update
sudo apt-get -q=2 install ansible
