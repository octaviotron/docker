

FROM debian:bullseye-slim
LABEL maintainer "octavio.rossell@gmail.com"

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get -y update
RUN apt-get install --no-install-recommends -y apt-utils
RUN apt-get -y full-upgrade
RUN apt-get install --no-install-recommends -y liquidsoap nano
RUN apt-get -y autoclean
RUN apt-get clean

RUN mkdir -p /var/liquidsoap/music/
COPY default.ogg /var/liquidsoap/music/default.ogg

COPY liquidsoap.liq /etc/liquidsoap.liq

COPY docker-entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

RUN useradd -m -s /bin/bash eldj

VOLUME ["/var/liquidsoap/music"]
ENTRYPOINT ["/entrypoint.sh"]

CMD runuser -l eldj -c 'liquidsoap /etc/liquidsoap.liq'
