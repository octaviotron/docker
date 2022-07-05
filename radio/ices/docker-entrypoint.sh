#!/bin/sh

if [ -n "$ICES_MOUNTPOINT" ]; then
	sed -i "s/x/x/g" /etc/ices/ices.conf
fi

find /mnt/music/* -iname "*.mp3" > /playlist.txt
/usr/local/bin/ices -c /etc/ices/ices.conf -v

