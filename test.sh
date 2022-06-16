#!/bin/bash


#Get created instances ID
instanceid=$(aws cloudformation describe-stacks --stack-name louise-ec2-resources-stack --query "Stacks[0].Outputs[?OutputKey=='InstanceId'].OutputValue" --output text)

#Get public IP
ec2publicIP=$(aws cloudformation describe-stacks --stack-name louise-ec2-resources-stack --query "Stacks[0].Outputs[?OutputKey=='PublicIP'].OutputValue" --output text)

#Connect to EC2 instance using ssh
#chmod 400 LouiseEC2Test3 #encountered error because I copied key file

#Connect to EC2 instance using ssh
ssh -i ./LouiseEC2Test3.pem ec2-user@$ec2publicIP
#navigate to download location
#cd /var/spool/mail
#open file: nano ec2-user

