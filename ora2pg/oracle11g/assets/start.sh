#!/bin/bash

export ORACLE_HOME=/u01/app/oracle/product/11.2.0/xe
export ORACLE_SID=XE
export PATH=$ORACLE_HOME/bin:$PATH

sed -i -E "s/HOST = [^)]+/HOST = ${HOSTNAME}/g" ${ORACLE_HOME}/network/admin/listener.ora
service oracle-xe start

echo "Database init..."
for f in /etc/entrypoint-initdb.d/*; do
  case "$f" in
    *.sh)  echo "$0: running ${f}"; . "${f}" ;;
    *.sql) echo "$0: running ${f}"; echo "@${f} ;" | sqlplus -S SYSTEM/oracle ;;
    *)     echo "No volume sql script, ignoring ${f}" ;;
  esac
  echo
done
echo "End init."

echo "Oracle started successfully!"
echo
echo "Create ALFRESCO tablespace and user"

echo "create tablespace ALFRESCO DATAFILE 'alfresco.dat' SIZE 500m REUSE AUTOEXTEND on NEXT 100m MAXSIZE 1g;" | sqlplus -S SYSTEM/oracle
echo "create user ALFRESCO identified by alfresco default tablespace ALFRESCO temporary tablespace TEMP;" | sqlplus -S SYSTEM/oracle
echo "grant connect, resource to ALFRESCO;" | sqlplus -S SYSTEM/oracle


echo "Import example Oracle Backup (Alfresco 4.2.c)" 
$ORACLE_HOME/bin/impdp system/oracle file=alfresco.dmp full=yes
echo "Import done!"

# forever loop just to prevent Docker container to exit, when run as daemon
while true; do sleep 1000; done
