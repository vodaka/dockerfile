#!/bin/sh 
set -e

echo "sentinel monitor mymaster ${MASTER_IP} ${MASTER_PORT} 2" >> /usr/local/etc/redis/sentinel.conf
echo "sentinel down-after-milliseconds mymaster 30000" >> /usr/local/etc/redis/sentinel.conf
echo "sentinel parallel-syncs mymaster 1" >> /usr/local/etc/redis/sentinel.conf
echo "sentinel failover-timeout mymaster 180000" >> /usr/local/etc/redis/sentinel.conf

exec redis-sentinel /usr/local/etc/redis/sentinel.conf 

