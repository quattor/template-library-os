#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# PostgreSQL Database
# This package group includes packages useful for use with Postgresql.
#
# optional packages
#

unique template rpms/optional/sql-server;

prefix '/software/packages';

'{libdbi-dbd-pgsql}' ?= nlist();
'{postgresql-contrib}' ?= nlist();
'{postgresql-docs}' ?= nlist();
'{postgresql-jdbc}' ?= nlist();
'{postgresql-odbc}' ?= nlist();
'{postgresql-odbc64}' ?= nlist();
'{postgresql-pl}' ?= nlist();
'{postgresql-tcl}' ?= nlist();
'{postgresql-test}' ?= nlist();
'{qt-ODBC}' ?= nlist();
'{unixODBC-kde}' ?= nlist();
