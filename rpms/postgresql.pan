#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# PostgreSQL Database server
# The PostgreSQL SQL database server, and associated packages.
#
# mandatory packages
#

unique template rpms/postgresql;

prefix '/software/packages';

'{postgresql-server}' ?= nlist();
