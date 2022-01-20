gh auth login 

az login

ssh-keygen -t ed25519 -P '' 

gh ssh-key add %USERPROFILE%\.ssh\id_ed25519.pub

foreach($line in get-content extensions.list) {code --install-extension $($line)}

mkdir %USERPROFILE%\workspace 

git clone git@github.com:puppetlabs/puppetlabs-pecdm.git %USERPROFILE%\workspace\pecdm 

cd %USERPROFILE%\workspace\pecdm

