#!/bin/bash

apt-get update -y

# Install Nginx
apt-get install nginx -y

systemctl enable nginx
systemctl start nginx

# Install unzip
apt-get install unzip -y

# Install Terraform
wget https://releases.hashicorp.com/terraform/1.13.1/terraform_1.13.1_linux_amd64.zip

unzip terraform_1.13.1_linux_amd64.zip

mv terraform /usr/local/bin/

terraform version

echo "Installation Completed"