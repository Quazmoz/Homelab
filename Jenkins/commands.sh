#!/bin/bash
sudo apt install default-jre

sudo useradd -d /home/jenkins jenkins
sudo passwd jenkins

sudo mkdir /home/jenkins
sudo mkdir /home/jenkins/.ssh
sudo touch /home/jenkins/.ssh/authorized_keys
sudo nano /home/jenkins/.ssh/authorized_keys
#add pub key
sudo chown -R jenkins /home/jenkins


sudo mkdir /home/Jenkins/.ssh
sudo touch /home/Jenkins/.ssh/authorized_keys
sudo chown -R Jenkins /home/Jenkins/.ssh
sudo chmod 777 /home/Jenkins/.ssh/authorized_keys
sudo chmod 777 /home/Jenkins/.ssh
sudo cat ~/secondarynode.pub >> /home/Jenkins/.ssh/authorized_keys

#https://stackoverflow.com/questions/36126778/jenkins-slave-unable-to-figure-out-java-version