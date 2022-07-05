
FROM debian:bullseye-slim
MAINTAINER Octavio Rossell Tabet "octavio.rossell@gmail.com"
LABEL maintainer "octavio.rossell@gmail.com"

ENV DEBIAN_FRONTEND noninteractive

# TEMPORAL
#RUN echo "Acquire::Check-Valid-Until false;" > /etc/apt/apt.conf.d/10no--check-valid-until
#RUN echo "deb http://10.0.0.2/debian-security bullseye-security main" > /etc/apt/sources.list
#RUN echo "deb http://10.0.0.2/debian/ bullseye main" >> /etc/apt/sources.list
#RUN echo "deb http://10.0.0.2/debian/ bullseye-updates main" >> /etc/apt/sources.list


RUN apt-get -y update
RUN apt-get install --no-install-recommends -y apt-utils
RUN apt-get -y full-upgrade
RUN apt-get install --no-install-recommends -y libshout3 libxml2 libmp3lame0 libvorbisfile3 
RUN apt-get -y autoclean
RUN apt-get clean

COPY ices-0.4.deb /tmp/ices-0.4.deb
COPY ices.conf /etc/ices/ices.conf
COPY playlist.txt /playlist.txt
RUN dpkg -i /tmp/ices-0.4.deb

VOLUME ["/mnt/music"]

COPY docker-entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh


#CMD ["/entrypoint.sh"]


