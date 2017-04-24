#!/bin/bash

ansible-playbook -vvvi private/hosts extra/step2.playbook.yml -u ubuntu


echo "Finished installing Drupal and Civicrm!"
echo""
echo "Host    User:Pass"
grep ^host private/clients_instances


