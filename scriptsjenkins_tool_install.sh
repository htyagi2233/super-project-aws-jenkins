# Step 2: Install Docker
sudo apt update && sudo apt upgrade -y
sudo apt install -y docker.io
sudo systemctl enable docker
sudo systemctl start docker

#Add current user AND Jenkins to docker group:
sudo usermod -aG docker $USER
sudo usermod -aG docker jenkins

#Optional: Jenkins without sudo for Docker
#If jenkins user is not allowed to run Docker commands even after group addition:

sudo usermod -aG docker jenkins
sudo systemctl restart jenkins

# Final Tip: NEVER DO THIS IN PRODUCTION
sudo chmod 777 /var/run/docker.sock

#And double check:
getent group docker

# Step 3: Install Ansible
sudo apt install -y software-properties-common
sudo add-apt-repository --yes --update ppa:ansible/ansible
sudo apt install -y ansible


