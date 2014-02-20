#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# PostgreSQL Database
# This package group includes packages useful for use with Postgresql.
#
# default packages
#

unique template rpms/default/sql-server;

prefix '/software/packages';

'{perl-DBD-Pg}' ?= nlist();
'{postgresql-python}' ?= nlist();
'{postgresql-server}' ?= nlist();
'{rhdb-utils}' ?= nlist();
'{unixODBC}' ?= nlist();
