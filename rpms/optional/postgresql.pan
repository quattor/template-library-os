#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# PostgreSQL Database server
# The PostgreSQL SQL database server, and associated packages.
#
# optional packages
#

unique template rpms/optional/postgresql;

prefix '/software/packages';

'{postgresql-contrib}' ?= nlist();
'{postgresql-plperl}' ?= nlist();
'{postgresql-plpython}' ?= nlist();
'{postgresql-pltcl}' ?= nlist();
'{postgresql-test}' ?= nlist();
'{rhdb-utils}' ?= nlist();
