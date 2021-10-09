#!/bin/bash
BACKUP_DATE=`date +%d-%b-%y`
BACKUP_PATH="/opt/tomcat"
BACKUP_DIR="/home/ram/backups/$BACKUP_DATE"

HOSTNAME=`hostname'

if [ "$HOSTNAME" = "ip-172-31-92-27" -o "HOSTNAME" = "ip-172-31-88-51" ]; then
	backup="dev"
else
  echo "server not found"
fi

FILE="$BACKUP_DATE.tar.gz"
mkdir -p $BACKUP_DIR
echo "create backup directory"

if [ -d $BACKUP_DIR ]; then
	tar -cvf $FILE $BACKUP_PATH
else
	echo "BACKUP_DIR : $BAKUP_DIR does not exist"
fi
