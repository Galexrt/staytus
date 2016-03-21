FROM ruby
MAINTAINER Tim Perry <pimterry@gmail.com>

USER root

RUN chmod 755 docker-start.sh && \
    apt-get update && \
    # Instal node as the JS engine for uglifier
    export DEBIAN_FRONTEND="noninteractive" && \
    apt-get install -y nodejs && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

ADD docker-start.sh /docker-start.sh
ADD . /opt/staytus/

RUN cd /opt/staytus && \
    bundle install --deployment --without development:test

ENTRYPOINT "/docker-start.sh"

EXPOSE 5000
