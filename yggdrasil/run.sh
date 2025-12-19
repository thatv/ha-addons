#!/bin/bash

echo "Starting..."

CONFIG_FILE=/data/yggdrasil.conf

if test -f "$CONFIG_FILE"; then
  echo "using exsisting yggdrasil config"
else
  echo "No yggdrasil.conf found, generating... " 
  yggdrasil -genconf > $CONFIG_FILE
fi

echo "lunching Yggdrasil"
yggdrasil -useconffile $CONFIG_FILE
