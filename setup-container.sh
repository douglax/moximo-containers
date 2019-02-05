#!/bin/bash

# Creates a moximo container

CONTAINER_PATH="./x86_64"
CONTAINER=""
PASSWORD=""

while getopts "p:c:P:" opt; do
  case $opt in
    c)
      CONTAINER=$OPTARG
      ;;
    p)
      CONTAINER_PATH=$OPTARG
      ;;
    P)
      PASSWORD=$OPTARG
      ;;

    \?)
      echo "Invalid option: -$OPTARG" >&2
      ;;
  esac
done

cd $CONTAINER_PATH/$CONTAINER

sudo dnf install -y `cat rpms.txt`
./dockerize-$CONTAINER 
./dockerize-$CONTAINER-setup $PASSWORD
