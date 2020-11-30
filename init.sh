NAME="DOMAIN"
DOMAIN="DOMAIN.com"
USER_EMAIL="admin@lowlandtech.com"
USER_PASSWORD="admin's_s3cr3t_p@ssw0rd"
ROOT_PASSWORD="root's_s3cr3t_p@ssw0rd"
DOMAINS="DOMAIN1 DOMAIN2 DOMAIN3 DOMAIN5"
PORT=8500
cd /root
apt update
apt upgrade
apt install -y git docker.io curl wget openssl apt-transport-https
curl -L https://github.com/docker/compose/releases/download/1.21.2/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose
git clone https://github.com/lowlandtech/network
cd network
chmod +x wordpress.sh
wordpress $DOMAINS $USER_EMAIL $USER_PASSWORD $ROOT_PASSWORD $PORT
wget https://packages.microsoft.com/config/ubuntu/20.04/packages-microsoft-prod.deb -O packages-microsoft-prod.deb
dpkg -i packages-microsoft-prod.deb
apt update
apt install -y dotnet-sdk-5.0
echo NAME="${NAME}" >> .env
echo DOMAIN="${DOMAIN}" >> .env
echo ROOT=/network >> .env
echo USER_EMAIL="${USER_EMAIL}" >> .env
echo USER_NAME=admin >> .env
echo USER_PASSWORD="${USER_PASSWORD}" >> .env
echo ROOT_PASSWORD="${ROOT_PASSWORD}" >> .env
docker-compose \
-f docker-compose.yml \
-f docker-compose.wordpress.yml \
-f docker-compose.mail.yml \
-f docker-compose.mautic.yml \
up -d
curl https://raw.githubusercontent.com/creationix/nvm/master/install.sh | bash 
source ~/.profile 
nvm install 14.15.0
nvm install 15.2.0
nvm use 15.2.0
npm install -g @angular/cli