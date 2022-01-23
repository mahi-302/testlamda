import os
import boto3
import json
AMI = os.environ['ami-0fb653ca2d3203ac1']
INSTANCE_TYPE = os.environ['t2.micro']
KEY_NAME = os.environ['Ec2all']
SUBNET_ID = os.environ['subnet-0c9f6c09d2f62dc2d']
REGION = os.environ['us-east']
ec2 = boto3.client('ec2', region_name=REGION)
init_script = """"#!/bin/bash
 sudo apt-get update -y
 sudo apt-get upgrade -y
 sudo apt-get install apache2 -y"""
def lambda_handler(event, context):
 instance = ec2.run_instances(ImageId=ami-0fb653ca2d3203ac1,InstanceType=t2.micro,KeyName=Ec2all,SubnetId='subnet-0c9f6c09d2f62dc2d,MaxCount=1,MinCount=1,UserData=init_script)
 instance_id = instance['Instances'][0]['i-0ae95d4c23948efa5']
 return instance_id
