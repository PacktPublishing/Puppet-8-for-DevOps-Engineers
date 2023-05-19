#!/bin/bash

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)" 
brew update 

brew install azure-cli 

brew install --cask puppetlabs/puppet/puppet-agent   

brew install --cask puppetlabs/puppet/pdk    

brew install --cask puppetlabs/puppet/puppet-bolt    

brew install --cask visual-studio-code 

brew install gh 

brew install shellcheck 

brew install puppetlabs/puppet/pe-client-tools 

brew install git