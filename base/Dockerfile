FROM debian:bullseye-slim

MAINTAINER Octavio Rossell Tabet "octavio.rossell@gmail.com"
LABEL maintainer "octavio.rossell@gmail.com"

ENV HOSTNAME debian.gnuve
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update
RUN apt-get install --no-install-recommends -y apt-utils

RUN apt-get install --no-install-recommends -y locales
RUN echo 'en_US.UTF-8 UTF-8' > /etc/locale.gen
RUN locale-gen

RUN apt-get install --no-install-recommends -y ca-certificates lsb-release coreutils tzdata 
RUN apt-get install --no-install-recommends -y net-tools whois bind9utils dnsutils nmap 
RUN apt-get install --no-install-recommends -y sudo locate                             
RUN apt-get install --no-install-recommends -y links2 gpm git wget bzip2 zip python3-pip

RUN apt-get install --no-install-recommends -y vim
RUN echo "set tabstop=4 shiftwidth=4 noexpandtab" >> /etc/vim/vimrc
RUN sed -i -e 's/set mouse.*/set mouse-=a/' /usr/share/vim/vim82/defaults.vim
RUN sed -i -e 's/filetype plugin indent.*/filetype plugin indent off/' /usr/share/vim/vim82/defaults.vim

RUN apt-get install --no-install-recommends -y bash-completion
RUN echo $'if [ -f /etc/bash_completion ]; then \n . /etc/bash_completion \nfi \n' >> /etc/profile
RUN echo $'\nHISTTIMEFORMAT="%d/%m/%y %T " \n' >> /etc/profile
RUN echo 'export PS1="\[\033[1;0m\][\[\033[1;31m\]\u\[\033[1;0m\]@\[\033[1;34m\]\h\[\033[1;0m\]] \[\033[1;32m\]\w\[\033[1;0m\]\n# \[\033[0m\]"' >> /root/.bashrc
RUN echo 'PS1="\[\033[1;0m\][\[\033[1;33m\]\u\[\033[1;0m\]@\[\033[1;34m\]\h\[\033[1;0m\]] \[\033[1;32m\]\w\[\033[1;0m\]\n# \[\033[0m\]"' >> /etc/skel/.bashrc

RUN apt-get -y autoclean
RUN apt-get clean

VOLUME ["/opt/persistent"]
#EXPOSE 22001

