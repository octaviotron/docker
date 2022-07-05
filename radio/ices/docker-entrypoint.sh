#!/bin/sh

if [ -n "$ICECAST_SERVER" ]; then
	sed -i "s/<Hostname>[^<]*<\/Hostname>/<Hostname>$ICECAST_SERVER<\/Hostname>/g" /etc/ices/ices.conf
fi

if [ -n "$ICECAST_PASSWORD" ]; then
    sed -i "s/<Password>[^<]*<\/Password>/<Password>$ICECAST_PASSWORD<\/Password>/g" /etc/ices/ices.conf
fi

find /mnt/music/* -iname "*.mp3" > playlist.txt
/usr/local/bin/ices -c /etc/ices/ices.conf -v

