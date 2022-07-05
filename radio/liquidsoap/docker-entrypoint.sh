#!/bin/sh

if [ -n "$LIQUIDSOAP_USER" ]; then
    sed -i "s/user.*/user='$LIQUIDSOAP_USER',/g" /etc/liquidsoap.liq
fi

if [ -n "$LIQUIDSOAP_PASS" ]; then
    sed -i "s/password.*/password='$LIQUIDSOAP_PASS',/g" /etc/liquidsoap.liq
fi

if [ -n "$LIQUIDSOAP_HOST" ]; then
    sed -i "s/host.*/host='$LIQUIDSOAP_HOST',/g" /etc/liquidsoap.liq
fi

if [ -n "$LIQUIDSOAP_MOUNT" ]; then
    sed -i "s/mount.*/mount='$LIQUIDSOAP_MOUNT',/g" /etc/liquidsoap.liq
fi

runuser -l eldj -c 'liquidsoap /etc/liquidsoap.liq'

