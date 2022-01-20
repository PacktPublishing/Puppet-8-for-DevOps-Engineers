#!/bin/bash
gh auth login 

az login

ssh-keygen -t ed25519 -P '' 

gh ssh-key add ~/.ssh/id_ed25519.pub 

curl https://raw.githubusercontent.com/PacktPublishing/Puppet-7-for-DevOps-Engineering/main/ch2/extensions.list > extensions.list

xargs -L1 code --install-extension < extensions.list 

rm extension.list

mkdir ~workspace/pecdm  

git clone git@github.com:puppetlabs/puppetlabs-pecdm.git ~workspace/pecdm 

cd ~workspace/pecdm || exit