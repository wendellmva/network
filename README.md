# network
contains the network

### getting started

### add and configure git

```bash
$ apt update
$ apt install git
```

```bash
git config --global user.name "your username"
git config --global user.password "your password"
git config --global user.email "username@example.com"
```

```bash
root@server:~/$ mkdir lowlandtech
root@server:~/$ cd lowlandtech
root@server:~/lowlandtech$ git clone https://github.com/lowlandtech/network
root@server:~/lowlandtech/network$ docker-compose up -d
```

### run all the containers

```bash
root@server:~/lowlandtech/network# docker-compose
  -f docker-compose.wordpress.yml \
  -f docker-compose.postgres.yml \
  -f docker-compose.mail.yml \
  -f docker-compose.mautic.yml \
  up -d
```

## run only mail and mautic

```bash
$ docker-compose -f docker-compose.mautic.yml -f docker-compose.mail.yml up -d
```

## install btc payserver

Assumes a fresh vps without docker installed.


### Login as root

```bash
sudo su -
```

### Create a folder for BTCPay

```bash
mkdir BTCPayServer
cd BTCPayServer
```

### Clone this repository

```bash
git clone https://github.com/btcpayserver/btcpayserver-docker
cd btcpayserver-docker
```

### Run btcpay-setup.sh with the right parameters

```bash
export BTCPAY_HOST="pay.stepacard.com"
export NBITCOIN_NETWORK="mainnet"
export BTCPAYGEN_CRYPTO1="btc"
export BTCPAYGEN_ADDITIONAL_FRAGMENTS="opt-save-storage-s;opt-add-thunderhub;opt-add-electrum-ps"
export BTCPAYGEN_REVERSEPROXY="nginx"
export BTCPAYGEN_LIGHTNING="clightning"
export BTCPAY_ENABLE_SSH=true
export LETSENCRYPT_EMAIL="admin@stepacard.com"
. ./btcpay-setup.sh -i

exit
```


