# Based on SL5.9 group definition

unique template rpms/group/mysql;

prefix '/software/packages';

# Mandatory Packages:
'{mysql}' ?= nlist();

# Default Packages:
'{MySQL-python}' ?= nlist();
'{libdbi-dbd-mysql}' ?= nlist();
'{mysql-connector-odbc}' ?= nlist();
'{mysql-server}' ?= nlist();
'{perl-DBD-MySQL}' ?= nlist();
'{unixODBC}' ?= nlist();

# Optional Packages:
'{mod_auth_mysql}' ?= nlist();
'{mysql-bench}' ?= nlist();
'{mysql-connector-odbc64}' ?= nlist();
'{mysql-devel}' ?= nlist();
'{php-mysql}' ?= nlist();
'{qt-MySQL}' ?= nlist();
