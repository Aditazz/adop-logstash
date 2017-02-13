FROM logstash:2.1.1-1

MAINTAINER Francisco Rodriguez, <francisco.rodriguez@aditazz.com>

RUN mkdir -p /var/log/logstash/development
RUN mkdir -p /var/log/logstash/testing
RUN mkdir -p /var/log/logstash/stash
RUN mkdir -p /var/log/logstash/production

ADD ./resources/config/logstash.yml /etc/logstash/conf.d/logstash.yml

CMD logstash -f /etc/logstash/conf.d/logstash.yml
