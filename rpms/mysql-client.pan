#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# MySQL Database client
# The MySQL SQL database client, and associated packages.
#
# mandatory packages
#

unique template rpms/mysql-client;

prefix '/software/packages';

'{mysql}' ?= nlist();
