FROM centos

MAINTAINER zsl <zsl6658@126.com>

RUN set -x  && \
    yum install -y wget && \
    yum groupinstall -y "Development Tools" && \
    yum install -y ruby && \
    yum install -y rubygems && \
    wget http://download.redis.io/releases/redis-3.0.0.tar.gz && \
    mkdir -p /usr/local && \
    tar -xzvf redis-3.0.0.tar.gz -C /usr/local/ && \
    cd /usr/local/redis-3.0.0 && make && make PREFIX=/usr/local/redis install && \
    mkdir -p /usr/local/redis/etc && cp /usr/local/redis-3.0.0/redis.conf /usr/local/redis/etc/ && \
    cp -r /usr/local/redis /usr/local/redis1 && \
    cp -r /usr/local/redis /usr/local/redis2 && \
    cp -r /usr/local/redis /usr/local/redis3 && \
    cp -r /usr/local/redis /usr/local/redis4 && \
    cp -r /usr/local/redis /usr/local/redis5 && \
    mv /usr/local/redis /usr/local/redis6 && \
    sed -i 's/# cluster-enabled yes/cluster-enabled yes/' /usr/local/redis1//etc/redis.conf && \
    sed -i 's/port 6379/port 7001/' /usr/local/redis1//etc/redis.conf && \
    sed -i 's/daemonize no/daemonize yes/' /usr/local/redis1/etc/redis.conf && \
    sed -i 's/# cluster-enabled yes/cluster-enabled yes/' /usr/local/redis2/etc/redis.conf && \
    sed -i 's/port 6379/port 7002/' /usr/local/redis2//etc/redis.conf && \
    sed -i 's/daemonize no/daemonize yes/' /usr/local/redis2/etc/redis.conf && \
    sed -i 's/# cluster-enabled yes/cluster-enabled yes/' /usr/local/redis3/etc/redis.conf && \
    sed -i 's/port 6379/port 7003/' /usr/local/redis3//etc/redis.conf && \ 
    sed -i 's/daemonize no/daemonize yes/' /usr/local/redis3/etc/redis.conf && \
    sed -i 's/# cluster-enabled yes/cluster-enabled yes/' /usr/local/redis4/etc/redis.conf && \
    sed -i 's/port 6379/port 7004/' /usr/local/redis4/etc/redis.conf && \  
    sed -i 's/daemonize no/daemonize yes/' /usr/local/redis4/etc/redis.conf && \
    sed -i 's/# cluster-enabled yes/cluster-enabled yes/' /usr/local/redis5/etc/redis.conf && \
    sed -i 's/port 6379/port 7005/' /usr/local/redis5/etc/redis.conf && \ 
    sed -i 's/daemonize no/daemonize yes/' /usr/local/redis5/etc/redis.conf && \
    sed -i 's/# cluster-enabled yes/cluster-enabled yes/' /usr/local/redis6/etc/redis.conf && \
    sed -i 's/port 6379/port 7006/' /usr/local/redis6/etc/redis.conf && \
    sed -i 's/daemonize no/daemonize yes/' /usr/local/redis6/etc/redis.conf && \
    cp /usr/local/redis-3.0.0/src/redis-trib.rb /usr/local/


COPY entry-point.sh /usr/local/bin/entry-point.sh
RUN chmod +x /usr/local/bin/entry-point.sh
RUN wget https://rubygems.global.ssl.fastly.net/gems/redis-3.2.1.gem && gem install -l ./redis-3.2.1.gem
ENTRYPOINT ["/usr/local/bin/entry-point.sh"]

