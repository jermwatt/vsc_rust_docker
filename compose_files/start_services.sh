#!/bin/bash

echo '                  **********                  '
echo '                  **********                  '
echo '         ***** REGENERATING VSC *****         '
echo '                  **********                  '
echo '                  **********                  '

echo '       ------- STOPPING SERVICES -------      '

# spin down services
docker-compose -f docker-compose-vsc-ide.yml down 

# spin down network
echo '       ------- STOPPING NETWORK -------      '
docker network rm vsc_network

echo '       ------- SPINNING UP NEW NETWORK -------      '
docker network create --attachable --driver=bridge --subnet=10.4.0.0/24 vsc_network
sleep 15

echo '       ------- REGENERATING SERVICE IPs -------      '
rm .env
touch .env


# set ips
VSC_IP=10.4.0.4
echo VSC_IDE=${VSC_IP} > .env

# set absolute path to app directory for vsc container
ABSPATH=${PWD%/*}/apps/vsc_ide/app
echo ABSPATH=${ABSPATH} > .env


echo '       ------- STARTING SERVICES -------      '
docker-compose -f docker-compose-vsc-ide.yml up -d
