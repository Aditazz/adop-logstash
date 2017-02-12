FROM logstash:2.1.1-1

MAINTAINER Francisco Rodriguez, <francisco.rodriguez@aditazz.com>

ADD ./resources/config/logstash.yml /etc/logstash/conf.d/logstash.yml

CMD logstash -f /etc/logstash/conf.d/logstash.yml
