#!/bin/bash
sudo yum install -y yum-utils shadow-utils
sudo yum-config-manager --add-repo https://rpm.releases.hashicorp.com/AmazonLinux/hashicorp.repo
sudo yum -y install terraform


# for Ubuntu
# #!/bin/bash

# # Update existing packages
# sudo apt-get update -y
# sudo apt-get install -y gnupg software-properties-common curl

# # Add the HashiCorp GPG key
# curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo gpg --dearmor -o /usr/share/keyrings/hashicorp-archive-keyring.gpg

# # Add the official HashiCorp Linux repository
# echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | \
#   sudo tee /etc/apt/sources.list.d/hashicorp.list

# # Update and install Terraform
# sudo apt-get update -y
# sudo apt-get install -y terraform
