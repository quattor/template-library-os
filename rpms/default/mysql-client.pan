#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# MySQL Database client
# The MySQL SQL database client, and associated packages.
#
# default packages
#

unique template rpms/default/mysql-client;

prefix '/software/packages';

'{MySQL-python}' ?= nlist();
'{mysql-connector-odbc}' ?= nlist();
