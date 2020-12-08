apt upgrade
apt update
cd /root
wget https://packages.microsoft.com/config/ubuntu/20.04/packages-microsoft-prod.deb -O packages-microsoft-prod.deb
dpkg -i packages-microsoft-prod.deb
curl https://raw.githubusercontent.com/creationix/nvm/master/install.sh | bash 
source ~/.profile 
nvm install 14.15.0
nvm install 15.2.0
nvm use 15.2.0
npm install -g @angular/cli
apt update
apt install -y dotnet-sdk-5.0
