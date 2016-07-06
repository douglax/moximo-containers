#!/bin/bash

# Set up MariaDB

if [[ $1 != "" ]]; then
    PASSWORD=$1
else 
    PASSWORD="sotolito"
fi

echo "Setting up MariaDB"



mkdir /var/sotolito/
cd /var/sotolito 
tar xvf /volconf.tar

mysqladmin -u root password $PASSWORD
