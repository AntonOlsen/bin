#!/bin/bash
date
#
# Schedule with the following crontab line:
# 0 * * * * /root/bin/mydump.sh >> /var/log/mydump.log 2>&1
#
# MYSQL="mysql -u$DB_USER -p$DB_PASS -hlocalhost"
# MYSQLDUMP="mysqldump -u$DB_USER -p$DB_PASS -hlocalhost"
#
DEBUG=""

DB_USER="root"
DB_PASS="vexFTWdb"

DATE=$(date +%Y-%m-%d--%H:%M)
HOSTNAME=$(cat /etc/hostname)

DIR_BASE="/root/mysqldump/$HOSTNAME"
DIR_DEST="$DIR_BASE/$DATE/"

if [ -d $DIR_DEST ] ; then
    echo Directory exists, halting.
else
	mkdir -p $DIR_DEST
fi

cd $DIR_DEST
if [ "$DEBUG" == "YES" ] ; then pwd ; fi

MYSQL="mysql "
MYSQLDUMP="mysqldump "

time (
    echo "SHOW DATABASES;" |$MYSQL | grep -v -e Database -e information_schema -e performance_schema -e mysql | \
    while read DB ; do
        if [ "$DEBUG" == "YES" ] ; then echo $DB ; fi
        mkdir -p $DB

        echo "SHOW TABLES;" |$MYSQL $DB | grep -v 'Tables_in' | \
        while read TABLE ; do
            if [ "$DEBUG" == "YES" ] ; then echo "   "$TABLE ; fi
            $MYSQLDUMP $DB $TABLE > $DB/$TABLE.sql 
            gzip $DB/$TABLE.sql
        done
    done
)

# Prune all but the 6 most recent hourly dumps
cd $DIR_BASE
pwd

# Delete the hourly backups past 6 hours, keep the midnight backup
while read DIR ; do
    echo $DIR
 	rm -vRf $DIR
done < <( ls -dt 20[0-9][0-9]* | grep -v -- '--00:' |tail -n+7 )

# Delete the midnight backup past 7 days
if ls |grep "20[0-9][0-9]\(.*\)--00:" ; then
    while read DIR ; do
 	    rm -vRf $DIR
    done < <( ls -dt 20[0-9][0-9]*00:* |tail -n+8 )
fi
date

