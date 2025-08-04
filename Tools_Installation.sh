#!/bin/bash


#Docker

sudo yum install docker -y
sudo service docker start
sudo systemctl enable docker
sudo usermod -aG docker $USER
sudo service docker restart
sleep 5
docker run -itd --name sonarimage -p 9000:9000 sonarqube:lts-community



#Jenkins

sudo yum install java-17-amazon-corretto -y
sudo wget -O /etc/yum.repos.d/jenkins.repo \https://pkg.jenkins.io/redhat-stable/jenkins.repo
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io-2023.key
sudo yum install jenkins -y
sudo service jenkins start
sudo usermod -aG docker jenkins
echo "JENKINS PASSSWORD"
sudo cat /var/lib/jenkins/secrets/initialAdminPassword



#Install AWS CLI v2
sudo apt update
sudo apt install unzip -y
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install
aws --version

#Install eksctl

curl --silent --location "https://github.com/weaveworks/eksctl/releases/latest/download/eksctl_$(uname -s)_amd64.tar.gz" | tar xz -C /tmp
sudo mv /tmp/eksctl /usr/local/bin
eksctl version

#Install kubectl

curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
chmod +x kubectl
sudo mv kubectl /usr/local/bin/
kubectl version --client

sleep 5
