#!/bin/bash

USER={{user}}
PASSWD={{passwd}}
URL={{url}}
cd /tmp

wget --user $USER --password $PASSWD $URL

cp *.war /opt/tomcat/webapps

echo "cleaning files"

rm -r *.war
