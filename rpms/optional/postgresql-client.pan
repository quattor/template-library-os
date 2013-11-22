#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# PostgreSQL Database client
# The PostgreSQL SQL database client, and associated packages.
#
# optional packages
#

unique template rpms/optional/postgresql-client;

prefix '/software/packages';

'{libdbi-dbd-pgsql}' ?= nlist();
'{perl-DBD-Pg}' ?= nlist();
'{postgresql-jdbc}' ?= nlist();
'{tcl-pgtcl}' ?= nlist();
