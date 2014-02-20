#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# MySQL Database
# This package group contains packages useful for use with MySQL.
#
# optional packages
#

unique template rpms/optional/mysql;

prefix '/software/packages';

'{mod_auth_mysql}' ?= nlist();
'{mysql-bench}' ?= nlist();
'{mysql-connector-odbc64}' ?= nlist();
'{mysql-devel}' ?= nlist();
'{mysql51}' ?= nlist();
'{mysql55}' ?= nlist();
'{php-mysql}' ?= nlist();
'{qt-MySQL}' ?= nlist();
