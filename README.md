# network
contains the network

```bash
docker-compose -f docker-compose.yml \
  -f docker-compose.wordpress.yml \
  -f docker-compose.postgres.yml \
  -f docker-compose.mail.yml \
  -f docker-compose.mautic.yml \
  up -d
```
## run mail and mautic

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

