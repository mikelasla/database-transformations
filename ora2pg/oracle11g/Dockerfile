FROM alexeiled/docker-oracle-xe-11g
MAINTAINER keensoft
COPY assets/backup/alfresco.dmp /u01/app/oracle/admin/XE/dpdump/alfresco.dmp
RUN chown oracle:dba /u01/app/oracle/admin/XE/dpdump/alfresco.dmp
COPY assets/start.sh /start.sh
RUN chmod 755 /start.sh
CMD /start.sh 
