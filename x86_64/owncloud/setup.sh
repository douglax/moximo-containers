#!/bin/bash

echo "setupiando ando"


mkdir /var/sotolito/vols/php-apps/
cd /var/sotolito/vols/php-apps
tar xvf /owncloud-9.0.1.tar.bz2
chown -R nginx:nginx owncloud


