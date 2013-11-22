#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# PostgreSQL Database client
# The PostgreSQL SQL database client, and associated packages.
#
# mandatory packages
#

unique template rpms/postgresql-client;

prefix '/software/packages';

'{postgresql}' ?= nlist();
