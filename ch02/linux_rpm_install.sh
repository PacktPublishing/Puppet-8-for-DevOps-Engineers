#!/bin/bash
release=$(rpm -E '%{?rhel}') 

sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc 

sudo sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo' 

sudo rpm -Uvh https://yum.puppet.com/puppet7-release-el-"${release}".noarch.rpm 

sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc 

echo -e "[azure-cli] 
name=Azure CLI 
baseurl=https://packages.microsoft.com/yumrepos/azure-cli 
enabled=1 
gpgcheck=1 
gpgkey=https://packages.microsoft.com/keys/microsoft.asc" | sudo tee /etc/yum.repos.d/azure-cli.repo 

sudo dnf config-manager --add-repo https://cli.github.com/packages/rpm/gh-cli.repo 

sudo rpm -Uvh https://yum.puppet.com/puppet-tools-release-el-8.noarch.rpm 

sudo yum -y install epel-release 

sudo yum check-update 

sudo dnf install gh 

sudo yum install code 

sudo dnf install azure-cli 

sudo yum install ShellCheck 

sudo yum install puppet-bolt 

sudo yum install https://pm.puppetlabs.com/pe-client-tools/2021.7.0/21.7.0/repos/el/8/PC1/x86_64/pe-client-tools-21.7.0-1.el8.x86_64.rpm 
