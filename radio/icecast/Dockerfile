
FROM debian:bullseye-slim
MAINTAINER Octavio Rossell Tabet "octavio.rossell@gmail.com"
LABEL maintainer "octavio.rossell@gmail.com"

ENV DEBIAN_FRONTEND noninteractive

# TEMPORAL
RUN echo "Acquire::Check-Valid-Until false;" > /etc/apt/apt.conf.d/10no--check-valid-until
RUN echo "deb http://10.0.0.2/debian-security bullseye-security main" > /etc/apt/sources.list
RUN echo "deb http://10.0.0.2/debian/ bullseye main" >> /etc/apt/sources.list
RUN echo "deb http://10.0.0.2/debian/ bullseye-updates main" >> /etc/apt/sources.list


RUN apt-get -y update
RUN apt-get install --no-install-recommends -y apt-utils
RUN apt-get -y full-upgrade
RUN apt-get install --no-install-recommends -y icecast2
RUN apt-get -y autoclean
RUN apt-get clean

COPY icecast.xml /etc/icecast2/icecast.xml
RUN chown -R icecast2 /etc/icecast2

COPY docker-entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

EXPOSE 8000 8001 8443

VOLUME ["/var/log/icecast2", "/etc/icecast2"]
#ENTRYPOINT ["/entrypoint.sh"]
#CMD icecast2 -c /etc/icecast2/icecast.xml


