#!/bin/sh

/usr/local/redis1/bin/redis-server /usr/local/redis1/etc/redis.conf
/usr/local/redis2/bin/redis-server /usr/local/redis2/etc/redis.conf
/usr/local/redis3/bin/redis-server /usr/local/redis3/etc/redis.conf
/usr/local/redis4/bin/redis-server /usr/local/redis4/etc/redis.conf
/usr/local/redis5/bin/redis-server /usr/local/redis5/etc/redis.conf
/usr/local/redis6/bin/redis-server /usr/local/redis6/etc/redis.conf


cd /usr/local/
./redis-trib.rb create –replicas 1 127.0.0.1:7001 127.0.0.1:7002 127.0.0.1:7003 127.0.0.1:7004 127.0.0.1:7005 127.0.0.1:7006

