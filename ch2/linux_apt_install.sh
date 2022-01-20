#!/bin/bash
release=$(lsb_release -c | awk '{print $2}') 

wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg 

sudo install -o root -g root -m 644 packages.microsoft.gpg /etc/apt/trusted.gpg.d/ 

sudo sh -c 'echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/trusted.gpg.d/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" > /etc/apt/sources.list.d/vscode.list' 

wget https://apt.puppet.com/puppet7-release-"${release}".deb  

wget https://apt.puppet.com/puppet-tools-release-"${release}".deb 

curl -fsSL https://cli.github.com/packages/githubcli-archive-keyring.gpg | sudo dd of=/usr/share/keyrings/githubcli-archive-keyring.gpg 

echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | sudo tee /etc/apt/sources.list.d/github-cli.list > /dev/null 

sudo apt-get update   

sudo dpkg -i puppet7-release-"${release}".deb 

sudo dpkg -i puppet-tools-release-"${release}".deb 

rm packages.microsoft.gpg 

rm puppet7-release-"${release}".deb 

rm puppet-tools-release-"${release}".deb 

sudo apt install apt-transport-https 

sudo apt update 

sudo apt install code 

sudo apt –y install puppet-agent 

sudo apt-get install git 

sudo dpkg -i puppet-tools-release-"${release}".deb 

sudo apt-get install puppet-bolt 

sudo apt install gh 
 
curl -sL https://aka.ms/InstallAzureCLIDeb | sudo bash 
sudo apt install shellcheck