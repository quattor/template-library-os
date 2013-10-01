unique template rpms/mysql-client;

include { 'rpms/group/core' };

prefix '/software/packages';


'{MySQL-python}' ?= nlist();
'{mysql}' ?= nlist();
'{mysql-connector-java}' ?= nlist();
'{mysql-connector-odbc}' ?= nlist();
'{perl-DBD-MySQL}' ?= nlist();
'{perl-DBI}' ?= nlist();
'{sqlite}' ?= nlist();
