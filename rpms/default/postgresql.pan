#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# PostgreSQL Database server
# The PostgreSQL SQL database server, and associated packages.
#
# default packages
#

unique template rpms/default/postgresql;

prefix '/software/packages';

'{postgresql-docs}' ?= nlist();
