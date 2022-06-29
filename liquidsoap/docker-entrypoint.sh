#!/bin/sh

if [ -n "$LIQUIDSOAP_USER" ]; then
    sed -i "s/user = \"envivo\",/user='$LIQUIDSOAP_USER',/g" /etc/liquidsoap.liq
fi

if [ -n "$LIQUIDSOAP_PASS" ]; then
    sed -i "s/password = \"envivo\",/password='$LIQUIDSOAP_PASS',/g" /etc/liquidsoap.liq
fi

if [ -n "$LIQUIDSOAP_HOST" ]; then
    sed -i "s/host = \"10.0.0.122\",/password='$LIQUIDSOAP_HOST',/g" /etc/liquidsoap.liq
fi

if [ -n "$LIQUIDSOAP_MOUNT" ]; then
    sed -i "s/mount = \"\/envivo.ogg\",/mount='$LIQUIDSOAP_MOUNT',/g" /etc/liquidsoap.liq
fi

exec "$@"
