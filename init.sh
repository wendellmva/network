NAME="DOMAIN"
DOMAIN="DOMAIN.com"
USER_EMAIL="admin@lowlandtech.com"
USER_PASSWORD="admin's_s3cr3t_p@ssw0rd"
ROOT_PASSWORD="root's_s3cr3t_p@ssw0rd"
DOMAINS="DOMAIN1 DOMAIN2 DOMAIN3 DOMAIN5"
cd /root
apt update
apt upgrade
apt install -y git docker.io curl wget openssl apt-transport-https
curl -L https://github.com/docker/compose/releases/download/1.21.2/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose
git clone https://github.com/wendellmva/network
cd network
chmod +x wordpress.sh
./wordpress.sh $DOMAINS $USER_EMAIL $USER_PASSWORD $ROOT_PASSWORD
echo NAME="${NAME}" >> .env
echo DOMAIN="${DOMAIN}" >> .env
echo ROOT=/network >> .env
echo USER_EMAIL="${USER_EMAIL}" >> .env
echo USER_NAME=admin >> .env
echo USER_PASSWORD="${USER_PASSWORD}" >> .env
echo ROOT_PASSWORD="${ROOT_PASSWORD}" >> .env
