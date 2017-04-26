FROM centos:centos7

RUN set -x \
	&& yum update -y \
	&& yum -y localinstall https://download.postgresql.org/pub/repos/yum/9.4/redhat/rhel-7-x86_64/pgdg-centos94-9.4-2.noarch.rpm \
	&& yum install -y \
		unzip \
		libaio \
                postgresql94 \
	        gcc \
	        make \
	        perl \
	        perl-ExtUtils-MakeMaker \
	        perl-CPAN \
		wget \
		vim \
		telnet \
	&& yum clean all

COPY assets/instantclient-basic-linux.x64-11.2.0.4.0.zip /tmp/instantclient-basic-linux.x64-11.2.0.4.0.zip
COPY assets/instantclient-sdk-linux.x64-11.2.0.4.0.zip /tmp/instantclient-sdk-linux.x64-11.2.0.4.0.zip
COPY assets/instantclient-sqlplus-linux.x64-11.2.0.4.0.zip /tmp/instantclient-sqlplus-linux.x64-11.2.0.4.0.zip

RUN set -x \
	&& mkdir /opt/oracle \
	&& for zip in /tmp/*.zip ; do unzip $zip -d /opt/oracle ; rm $zip ; done  \
	&& echo "/opt/oracle/instantclient_11_2/" > /etc/ld.so.conf.d/oracle.conf \
	&& ldconfig

ENV ORACLE_HOME /opt/oracle/instantclient_11_2
ENV LD_LIBRARY_PATH $LD_LIBRARY_PATH:$ORACLE_HOME
ENV PATH $PATH:$ORACLE_HOME

RUN set -x \
	&& wget https://github.com/darold/ora2pg/archive/v16.2.tar.gz \
	&& tar xzf v16.2.tar.gz \
	&& cd ora2pg-16.2 \
	&& perl Makefile.PL \
	&& make && make install \
	&& rm -rf v16.2.tar.gz ora2pg-16.2

RUN set -x \
	&& perl -MCPAN -e 'install DBI' \
	&& perl -MCPAN -e 'install DBD::Oracle'

RUN set -x \
	&& useradd -ms /bin/bash ora2pg \
	&& ora2pg --project_base /home/ora2pg --init_project workdir 

COPY assets/ora2pg.conf.sample /etc/ora2pg/ora2pg.conf
COPY assets/ora2pg.conf.sample /home/ora2pg/workdir/config/ora2pg.conf
COPY assets/create_schema_ /home/ora2pg/workdir/create_schema_
COPY assets/*.sh /home/ora2pg/workdir/
COPY assets/entrypoint.sh /home/ora2pg/workdir/entrypoint.sh
RUN chmod +x /home/ora2pg/workdir/entrypoint.sh

RUN set -x \
	&& echo "postgres:5432:alfresco:alfresco:alfresco" > /home/ora2pg/.pgpass \
	&& chmod 0600 /home/ora2pg/.pgpass \
	&& chown -R ora2pg:ora2pg /home/ora2pg

WORKDIR /home/ora2pg/workdir
USER ora2pg
ENTRYPOINT ["/home/ora2pg/workdir/entrypoint.sh"]
CMD ["run_export_data"]
