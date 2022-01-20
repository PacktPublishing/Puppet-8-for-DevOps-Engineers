Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1')) 
 
choco install pdk --version 2.3.0.0 -y 

choco install puppet-agent --version 7.13.1 -y 

choco install vscode-puppet --version 1.4.0 -y 

choco install puppet-bolt --version 3.21.0 -y 

choco install vscode --version 1.63.2 -y 

choco install git --version 2.34.1 -y 

choco install pe-client-tools --version 21.4.1 -y 

choco install gh --version 2.4.0 -y 

choco install azure-cli 

choco install shellcheck 

Install-Module PuppetBolt 

Add-WindowsCapability -Online -Name OpenSSH.Client~~~~0.0.1.0 