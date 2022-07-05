
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
RUN apt-get install --no-install-recommends -y wget libmp3lame-dev libxml2-dev libshout-dev libvorbis-dev build-essential
RUN apt-get -y autoclean
RUN apt-get clean

RUN cd /tmp
RUN wget http://downloads.us.xiph.org/releases/ices/ices-0.4.tar.gz
RUN tar xf ices-0.4.tar.gz
RUN cd ices-0.4/
RUN ./configure --prefix=/usr/local --with-pic --with-lame
RUN make
RUN make install
RUN mkdir /etc/ices
COPY ices.conf /etc/ices/ices.conf
COPY playlist.txt /etc/ices/playlist.txt

VOLUME ["/mnt/music"]

COPY docker-entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh


CMD ["/entrypoint.sh"]


