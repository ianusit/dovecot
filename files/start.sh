#!/bin/sh
cp -R /defaults /etc/dovecot
sed -i "s/SERVICENAME/${SERVICENAME}/g" /etc/dovecot/dovecot.conf
sed -i "s/SERVICENAME/${SERVICENAME}/g" /etc/dovecot/conf.d/10-ssl.conf
sed -i "s/EMAIL/${EMAIL}/g" /etc/dovecot/conf.d/20-lmtp.conf
rsyslogd
/usr/sbin/dovecot -c /etc/dovecot/dovecot.conf
tail -F /var/log/dovecot.log
