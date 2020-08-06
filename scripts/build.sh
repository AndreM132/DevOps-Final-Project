sudo su - jenkins
# Making sure ~/.local/bin Exists
mkdir -p ~/.local/bin
echo 'PATH=$PATH:~/.local/bin' >> .bashrc
source .bashrc
#installing prerequisites to install ansible
## python 3 & pip is needed to to install ansible
sudo apt update -y
sudo apt install python3 -y
sudo apt install python3-pip -y
# Simply installing ansible on current user
pip3 install --user ansible
# Verifying Ansible is installed will show on logs
ansible --version
#pull version
cd /DevOps-Final-Project
git pull
#locate to root
cd ansible
#Running inventory & playbooks
ansible-playbook -i inventory playbook.yaml
