#!/bin/bash


# how many machines do you want to generate
limit=1
# starting from what number
start=25
#sample hostname: host18.sitecaretaker.com


######## do not modify anything from here
export `cat private/awskeys.txt|grep AWS_SECRET_ACCESS_KEY`
export `cat private/awskeys.txt|grep AWS_ACCESS_KEY_ID`

#env

#exit
#start=$((`sed -n '/clients/,$p' private/hosts|sed '/^$/d'|wc -l`-1+$start))
limitglobal=$(($limit+$start))

for ((i=$start;i<$limitglobal;i++)); 
do 

#echo $i
ansible-playbook -vvvi private/hosts extra/step1.ec2_launch.yml --extra-vars "tag=host$i" -u ubuntu

done

echo "====================================="
echo "Your current instances are:"
echo ""
grep ^host private/hosts | awk '{print $1}'

echo "====================================="