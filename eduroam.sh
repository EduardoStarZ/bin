#!/bin/sh

nmcli con add type wifi con-name "eduroam" ifname wlp2s0 ssid "eduroam" wifi-sec.key-mgmt wpa-eap 802-1x.identity $1 802-1x.password $2 802-1x.system-ca-certs no 802-1x.eap peap 802-1x.phase2-auth mschapv2

nmcli con up eduroam -a
