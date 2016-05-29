#!/bin/bash
# TODO implement key-value args
# TODO implement args for username and home path in remote server
#
# for the moment:
# $1 name of remote server (must be declared in ssh-config)
# $2 name of remote DB
OF=$(date +%Y%m%d).dump
ssh $1 'bash -s' < 'pg_dump -Fc -O --host=localhost --port=5432 --username=ubuntu --dbname=$1 > $OF' $2
rsync -vzar $1:/home/ubuntu/$OF . 
