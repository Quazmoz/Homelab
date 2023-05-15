#!/bin/bash

ssh -i ssh-key-2023-05-15.key ubuntu@redacted

ssh -i ssh-key-2023-05-15secondary.key ubuntu@redacted

#Need to add allow rule in "Security list" for relevant Instances in the Oracle cloud

#Secondary jenkins node install

#https://hostadvice.com/how-to/web-hosting/ubuntu/how-to-setup-jenkins-master-and-slave-on-ubuntu-18-04-lts/

ssh-copy-id Jenkins@10.0.0.138