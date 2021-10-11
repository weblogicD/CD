#!/bin/bash
BACKUP_DATE=`date +%d-%b-%y`
BACKUP_PATH="/opt/tomcat"
BACKUP_DIR="/home/ram/backups/$BACKUP_DATE"

HOSTNAME=`hostname'

FILE="$BACKUP_DATE.tar.gz"
mkdir -p $BACKUP_DIR

echo "create backup directory"
cd $BACKUP_DIR
tar -cvf $FILE $BACKUP_PATH

