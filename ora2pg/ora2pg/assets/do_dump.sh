#!/bin/bash

set -ue

host=postgres
user=alfresco
database=alfresco

_ARGS="-h $host -U $user -d $database"
_PSQL=$(which psql)

if [ "$_PSQL" == "" ]
then
	echo "no psql found"
	exit 1
fi

# EXEC SQL FILE
_sql_f() {
	$_PSQL $_ARGS -f $1
}

# EXEC SQL COMMAND
_sql_c() {
	$_PSQL $_ARGS -c "$1"
}

echo "-- Clean schema"
_sql_c "drop schema public cascade;"
_sql_c "create schema public authorization $user;"
echo 
echo "-- Create tables and sequences"
_sql_f create_schema_/tables.sql
_sql_f create_schema_/sequences.sql
echo

echo "-- Data tranformations"

# Remove junk tables not in destination schema
for s in alf_attributes alf_audit_config alf_audit_date alf_audit_source alf_global_attributes alf_list_attribute_entries alf_map_attribute_entries 
do
	sed -i "/^.*$s.*$/Id" data/data.sql
done

# Remove sequence update statements, we will update them at the end
sed -i -e '/SEQUENCE/{w data/update_sequences.sql' -e 'd}' data/data.sql

echo "-- Import data"
_sql_f data/data.sql


echo "-- Delete tagScope entries (alf_lock , alf_lock_resource)"
_sql_c "delete from alf_lock_resource;"
_sql_c "delete from alf_lock;"


echo "-- Create indexes and constraints"
_sql_f create_schema_/index_constraints.sql

echo "-- Update sequences"
sed -i 's,alf_prop_ser_value_seq,alf_prop_serializable_value_seq,g' data/update_sequences.sql
_sql_f data/update_sequences.sql

echo "-- Dump resulting database"
TIMESTAMP=$(($(date +%s%N)/1000000))
pg_dump $_ARGS -O --format plain --file out/alfresco_${TIMESTAMP}_postgresql.sql --verbose --encoding UTF8 
