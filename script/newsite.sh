#!/bin/sh

if [ -z "$1" ]; then
        echo "What's the domain name (and web root, if not ${PWD})?"
	exit
else
	DOMAIN="$1"
fi

if [ -z "$2" ]; then
	WEBROOT=$PWD
fi

read -p "I will set up a new domain \"${DOMAIN}\" to be served from \"${WEBROOT}\", ok? [Y/n] " -n 1 -r
echo    # (optional) move to a new line
if [[ $REPLY =~ ^[Yy]?$ ]]
then
    sudo sh -c "printf \"<VirtualHost *>\n\
    DocumentRoot \\\"${WEBROOT}\\\"\n\
    ServerName ${DOMAIN}\n\
    <Directory ${WEBROOT}>\n\
         AllowOverride All\n\
         Order allow,deny\n\
         Allow from all\n\
    </Directory>\n \
</VirtualHost>\n\n\" >> /etc/apache2/extra/httpd-vhosts.conf"

    sudo sh -c "printf \"127.0.0.1       ${DOMAIN}\n\" >> /etc/hosts"

    sudo apachectl restart

    open /Applications/Google\ Chrome.app/ "http://${DOMAIN}"
fi
