#!/bin/bash

ansible-playbook -vvvi private/hosts extra/step2.playbook.yml -u ubuntu
