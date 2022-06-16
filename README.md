# RStudio Interview

## Problem
<p> Create some IaC (Infrastructure as Code) to start a compute instance in AWS, Azure, or GCP that will run a script every night at midnight. This script will download a random Wikipedia article and save it somewhere on disk for long term storage.</p>

## Problem-Solution Approach

### Step 1: Figure out what I have to do and how:
- Compute Instance => EC2
- Repeating Event => Cron
- TBD: Where do I put Cron?

### Step 2: Learn about EC2:
- [Udemy](https://www.udemy.com/course/aws-certified-solutions-architect-associate-saa-c02/learn/lecture/16560336#content)
- AWS Docs

### Step 3: Prerequisites:
- Create and Configure AWS Account
- Install WSL for Windows

### Step 4: Create Cloudformation:
- EC2: Determine type, ami, security group
- Find template and modify it: [Template](
https://s3-us-gov-west-1.amazonaws.com/cloudformation-templates-us-gov-west-1/EC2InstanceWithSecurityGroupSample.template)
- Deploy it and fix bugs

### Step 5: The Cron Event
- Cron every day at midnight: 0 0 * * * 
- Researched options where to implement cron event
- Solution: put cron event in user data in cloudformation. ex: [StackOverflow](https://stackoverflow.com/questions/39102613/crontab-in-aws-cloudformation-userdata)
- Test & Debug: ssh into EC2 

## Files
- resources_ec2.yml: cloudformation specifying ec2 and it's security group
- deploy-cloudformation.sh: runs AWS-CLI command to deploy cloudformation. Note: put in your configured SSH key as a parameter
-test.sh: My test file. It grabs the instance id and public IP to SSH into the instance. There you can navigate to find the crontab as well as the downloaded wiki article

<p> Note: To run this on your machine simply deploy the cloudformation specifying your SSH key.</p>

