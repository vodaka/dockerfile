FROM redis
COPY redis.conf /usr/local/etc/redis/redis.conf
COPY run.sh /usr/local/bin/
RUN chown -R redis:redis /usr/local/etc/redis && \
    chown -R redis:redis /usr/local/bin/run.sh 
ENTRYPOINT ["/usr/local/bin/run.sh"]
