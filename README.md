# ORA2PG for Alfresco database transformation 

## Description

This project is an Oracle to PostgreSQL database transformation tool built to migrate Alfresco 4.x instances running with Oracle into 5.x instances running with PostgreSQL. 

It is based on the [Ora2pg](http://ora2pg.darold.net/) amayzing tool installed on Centos 7, then linked to Oracle11g and PostgreSQL9.4 containers in order to transform **a given Oracle DUMP file**

## USE

### ora2pg project

First start Oracle and PostgreSQL containers as we need to wait until Oracle finishes importing the DUMPFILE before running the ora2pg

~~~~~
$ docker-compose up -d oracle11g postgres
$ docker-compose logs -f oracle11g

...
oracle11g_1  | Import done!
~~~~~

~~~~~
$ docker-compose up ora2pg

...
ora2pg_ora2pg_1 exited with code 0
~~~~~

The resulting PostgreSQL dumpfile will be located in 'out'. This file can be imported directly on a PostgreSQL database

~~~~~
ls -l out/

-rw-r--r-- 1 mikel mikel 857855 abr 21 14:52 alfresco_1492779179219_postgresql.sql
~~~~~

### Provide a custom Oracle DUMPFILE

~~~~~
rm oracle11g/assets/backup/alfresco.dmp
cp alfresco.dmp oracle11g/assets/backup
~~~~~

* If you change the name of the DUMPFILE, you'll need to adapt the impdp command oracle11g/assets/start.sh to point to the same name
* If you change the name of the DUMPFILE, you'll need to adpat the COPY statement in oracle11g/Dockerfile to point to the same name
* The tablespace and schema of the oracle11g container is 'ALFRESCO', if that doesn't match on your DUMPFILE, you need to add remap_schema or/and remap_tablespace params to the impdp command in oracle11g/assets/start.sh like in the following example

~~~~~
$ORACLE_HOME/bin/impdp system/oracle file=my_custom_alfresco.dmp full=yes 
remap_schema=FOO:ALFRESCO remap_schema=FOOBAR:ALFRESCO remap_tablespace=BAR:ALFRESCO remap_tablespace=FOOBAR:ALFRESCO
~~~~~

* Look bellow for details of how to create the oracle database dump file with expdp

### Change the origin version

The ora2pg container is responsible of creating the correct ORIGIN schema in the postgres container, then importing the data exported from Oracle. This way we only need to maintain the 'create_schema_' folder, also making sure that ora2pg.conf has the correct values in the REPLACE_AS_BOOLEAN flag

'create_schema_' folder contains the PostgreSQL 4.2.c database schema splitted so we can first create tables and sequences, then import data exported from Oracle (and converted by ora2pg into postgresql scripts)after that, create indexes and table constraints and finally update all the sequences

~~~~~
$ ls ora2pg/assets/create_schema_/

all_statements.sql  index_constraints.sql  sequences.sql  tables.sql
~~~~~

To create the 'create_schema_' directory from any version, just install that version, execute pg_dump --schema and then postgres-dump-splitter

~~~~~
$ pg_dump --schema-only -d alfresco > alfresco.sql
$ java -jar postgres-dump-splitter.jar --output.dir=/tmp --pgdump.path=alfresco.sql
$ cp /tmp/*.sql /ora2pg-docker/ora2pg/assets/create_schema_
~~~~~

### Change the destination version

The resulting postgreSQL DUMPFILE will be of the same schema version of the origin so is up to the Alfresco migration paths 

# Alfresco 4.2.c-oracle project

First bring up Alfresco 4.2.c with Oracle 11g, the access will be http://localhost:8080/share (admin/admin)

* docker-compose up

Create a 'ora2pg-test' Site an create some sample content on it with a 'test' user. 

Now make and export of the Oracle database

~~~~~
$ docker exec -it 42coracle_db_1 bash
$ root#> su - oracle
$ oracle#> sqlplus / as sysdba
$ SQL> CREATE DIRECTORY exp_alfresco AS '/u01/app/oracle/admin/XE/dpdump/exp_alfresco';
Directory created.
$ SQL> GRANT read,write ON DIRECTORY exp_alfresco TO ALFRESCO;
Grant succeeded.
$ SQL> quit
$ oracle#> expdp ALFRESCO/alfresco DIRECTORY=exp_alfresco DUMPFILE=alfresco.dmp LOGFILE=exp_alfresco.log TABLESPACES=ALFRESCO
....

Dump file set for ALFRESCO.SYS_EXPORT_TABLESPACE_01 is:
  /u01/app/oracle/admin/XE/dpdump/exp_alfresco/alfresco.dmp
Job "ALFRESCO"."SYS_EXPORT_TABLESPACE_01" successfully completed at 11:34:47

$ oracle#> exit
$ root#> exit
$ docker-compose stop && docker-compose rm -vf
$ cp out/alfresco.dmp ../ora2pg/oracle11g/assets/backup
~~~~~

# 201605-postgresql project

Steps to restore the converted database along with the 4.2.c-oracle project alf_data contents

~~~~~
$ rm -rf alf_data/*
$ docker-compose up -d db
$ psql -h localhost -U alfresco -d alfresco -f ../ora2pg/out/alfresco_1492774782458_postgresql.sql
$ psql -h localhost -U alfresco -d alfresco -f ../ora2pg/update_sequences.sql
$ cp -R ../4.2.c-oracle/alf_data/contentstore* alf_data
$ docker-compose up
~~~~~
