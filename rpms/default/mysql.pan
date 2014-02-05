#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# MySQL Database
# This package group contains packages useful for use with MySQL.
#
# default packages
#

unique template rpms/default/mysql;

prefix '/software/packages';

'{MySQL-python}' ?= nlist();
'{libdbi-dbd-mysql}' ?= nlist();
'{mysql-connector-odbc}' ?= nlist();
'{mysql-server}' ?= nlist();
'{perl-DBD-MySQL}' ?= nlist();
'{unixODBC}' ?= nlist();
