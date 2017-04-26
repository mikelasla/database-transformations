#!/bin/bash

workdir=/home/ora2pg/workdir
host=oracle11g
port=1521

if [ "$1" == "run_export_data" ]
then
	bash -x clean.sh
	echo "Export Data from oracle11g"
	ora2pg -t COPY -o data.sql -b $workdir/data -c $workdir/config/ora2pg.conf
	echo "Import Data to postgres ($(wc -l $workdir/data/data.sql) lines)"
	bash do_dump.sh
else
	exec "$@"
fi


