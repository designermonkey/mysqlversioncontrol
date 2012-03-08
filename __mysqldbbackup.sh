#!/bin/sh
# http://designermonkey.co.uk
#RUN DB BACKUP AND VERSION CONTROL

TMP_DIR="_tmp"

mysqldump -u root -pbr-6004w-g1 --skip-extended-insert $1 > $TMP_DIR/$1.sql
./__mysqldumpsplitter.sh $TMP_DIR/$1.sql
rm $TMP_DIR/$1.sql
git commit -am 'Updating DB backup'