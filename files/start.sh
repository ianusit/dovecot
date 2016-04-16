#!/bin/sh
rsyslogd
/usr/sbin/dovecot -c /etc/dovecot/dovecot.conf
tail -F /var/log/dovecot.log
