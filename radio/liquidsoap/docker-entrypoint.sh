#!/bin/sh

echo '#!/usr/bin/liquidsoap' > /etc/liquidsoap.liq
echo 'security = mksafe(single("/var/liquidsoap/music/default.ogg"))' >> /etc/liquidsoap.liq
echo "ices = input.http('http://$LIQUIDSOAP_HOST:8000/ices')" >> /etc/liquidsoap.liq
echo "envivo = input.http('http://$LIQUIDSOAP_HOST:8000/envivo')" >> /etc/liquidsoap.liq
echo "" >> /etc/liquidsoap.liq
echo "verif = fallback([envivo, ices])" >> /etc/liquidsoap.liq
echo "radio = fallback([verif, security])" >> /etc/liquidsoap.liq
echo "" >> /etc/liquidsoap.liq
echo "output.icecast(%vorbis, host='$LIQUIDSOAP_HOST', port = 8000, password='$LIQUIDSOAP_PASS', mount = '$LIQUIDSOAP_MOUNT', radio)" >> /etc/liquidsoap.liq

runuser -l eldj -c 'liquidsoap /etc/liquidsoap.liq'

