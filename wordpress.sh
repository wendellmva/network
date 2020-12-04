#!/bin/bash
DOMAINS=$1
USER_EMAIL=$2
USER_PASSWORD=$3
ROOT_PASSWORD=$4
mkdir src
for DOMAIN in $DOMAINS
do
cp -avr wordpress src/$DOMAIN
cd src/$DOMAIN
echo DB_CONTAINER="$DOMAIN"_db >> .env
echo NAME="$DOMAIN" >> .env
echo USER_NAME=admin >> .env
echo USER_PASSWORD=${USER_PASSWORD} >> .env
echo WP_CONTAINER="$DOMAIN"_wp >> .env
echo WP_TABLE_PREFIX=wp >> .env
echo WP_THEME=custom-theme >> .env
echo WP_PLUGIN=custom-plugin >> .env
echo DOMAIN="$DOMAIN".com >> .env
echo USER_EMAIL=${USER_EMAIL} >> .env
echo COMPOSER_CONTAINER="$DOMAIN"_cp >> .env
echo ROOT_PASSWORD=${ROOT_PASSWORD} >> .env
cd ../..
done