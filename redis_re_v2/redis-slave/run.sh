#!/bin/sh 
set -e

echo "slaveof ${MASTER_IP} ${MASTER_PORT}" >> /usr/local/etc/redis/redis.conf
exec redis-server /usr/local/etc/redis/redis.conf 

