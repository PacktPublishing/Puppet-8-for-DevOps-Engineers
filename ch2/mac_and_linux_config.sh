#!/bin/bash
gh auth login 

az login

ssh-keygen -t ed25519 -P '' 
gh ssh-key add ~/.ssh/id_ed25519.pub 

cat extensions.list | xargs -L1 code --install-extension 

mkdir ~workspace/pecdm  

git clone git@github.com:puppetlabs/puppetlabs-pecdm.git ~workspace/pecdm 

Cd ~workspace/pecdm