#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# PostgreSQL Database client
# The PostgreSQL SQL database client, and associated packages.
#
# default packages
#

unique template rpms/default/postgresql-client;

prefix '/software/packages';

'{PyGreSQL}' ?= nlist();
'{postgresql-odbc}' ?= nlist();
'{python-psycopg2}' ?= nlist();
