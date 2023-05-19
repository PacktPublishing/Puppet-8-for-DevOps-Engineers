gh auth login 

az login

ssh-keygen -t ed25519 -P '' 

gh ssh-key add %USERPROFILE%\.ssh\id_ed25519.pub

Invoke-WebRequest -Uri "hhttps://raw.githubusercontent.com/PacktPublishing/Puppet-7-for-DevOps-Engineering/main/ch2/extensions.list" -OutFile "extensions.list"

foreach($line in get-content extensions.list) {code --install-extension $($line)}

mkdir %USERPROFILE%\workspace 

git clone git@github.com:puppetlabs/puppetlabs-pecdm.git %USERPROFILE%\workspace\pecdm 

cd %USERPROFILE%\workspace\pecdm

