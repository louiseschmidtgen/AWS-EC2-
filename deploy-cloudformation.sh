
#create ec2 instance via cloudformation provide SSH Key as parameter
aws cloudformation deploy --template-file resources_ec2.yml --stack-name louise-ec2-resources-stack --parameter-overrides KeyName=LouiseEC2Test3

#to delete stack run:
#aws cloudformation delete-stack --stack-name louise-ec2-resources-stack 

