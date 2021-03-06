#!/bin/bash
# De-installation script of alertmanager.

# Define installation directory
DIR=alertmanager-$ALERTMANAGER_RELEASE.linux-amd64

service alertmanager stop
chkconfig --del alertmanager

[ -d /opt/$DIR ] && rm -rf /opt/$DIR
[ -h /opt/alertmanager ] && rm -f /opt/alertmanager
[ -f /etc/prometheus/alertmanager.yml ] && rm -f /etc/prometheus/alertmanager.yml

[ -f /etc/init.d/alertmanager ] && rm -f /etc/init.d/alertmanager
[ -f /usr/bin/update-alertmanager-config.sh ] && rm -f /usr/bin/update-alertmanager-config.sh
[ -f /usr/bin/uninstall-alertmanager.sh ] && rm -f /usr/bin/uninstall-alertmanager.sh
exit 0
