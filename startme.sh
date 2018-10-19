#!/bin/sh
set -e

OVERRIDE=${OVERRIDE:-}
SKIP_REFRESH=${SKIP_REFRESH:-}

if [ -z "${OVERRIDE}" ]
then
	mkdir -p /var/www/html
	darkhttpd /var/www/html --port 8080 --daemon
	if [ -z "${SKIP_REFRESH}" ]
	then
		wget -qO- https://codeload.github.com/dokku/simp_le/tar.gz/master | tar xz -C /
	fi
	/simp_le-master/simp_le.py --default_root /var/www/html "$@"
else
	"$@"
fi
