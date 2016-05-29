#!/bin/bash 
OF=$(date +%Y%m%d).dump
pg_dump -Fc -O --host=localhost --port=5432 --username=ubuntu --dbname=$1 > $OF 
