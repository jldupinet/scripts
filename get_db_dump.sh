#!/bin/bash
OF=$(date +%Y%m%d).dump
ssh $1 'bash -s' < gen_db_dump.sh $2
rsync -vzar $1:/home/ubuntu/$OF . 
