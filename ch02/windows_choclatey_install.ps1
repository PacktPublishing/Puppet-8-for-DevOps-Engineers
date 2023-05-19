Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1')) 
 
choco install pdk -y 

choco install puppet-agent -y 

choco install vscode-puppet -y 

choco install puppet-bolt -y 

choco install vscode2 -y 

choco install git -y 

choco install pe-client-tools -y 

choco install gh -y 

choco install azure-cli -y

choco install shellcheck -y

Install-Module PuppetBolt -y

Add-WindowsCapability -Online -Name OpenSSH.Client~~~~0.0.1.0 
