#!/bin/bash
DOMAINS=$1
USER_EMAIL=$2
USER_PASSWORD=$3
ROOT_PASSWORD=$4
PORT=$5
mkdir src
for DOMAIN in $DOMAINS
do
cp -avr wordpress src/$DOMAIN
cd src/$DOMAIN
echo DB_CONTAINER=db_"$DOMAIN" >> .env
echo DB_NAME=db_"$DOMAIN" >> .env
echo DB_USER=admin >> .env
echo DB_PASSWORD=${USER_PASSWORD} >> .env
echo WP_CONTAINER=wp_"$DOMAIN" >> .env
echo WP_TABLE_PREFIX=wp >> .env
echo WP_THEME=custom-theme >> .env
echo WP_PLUGIN=custom-plugin >> .env
echo VIRTUAL_HOST="$DOMAIN".com >> .env
echo VIRTUAL_PORT=${PORT} >> .env
echo LETSENCRYPT_EMAIL=${USER_EMAIL} >> .env
echo COMPOSER_CONTAINER=cp_"$DOMAIN" >> .env
echo ROOT_PASSWORD=${ROOT_PASSWORD} >> .env
((PORT=PORT+1))
cd ../..
done