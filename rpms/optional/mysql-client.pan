#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# MySQL Database client
# The MySQL SQL database client, and associated packages.
#
# optional packages
#

unique template rpms/optional/mysql-client;

prefix '/software/packages';

'{libdbi-dbd-mysql}' ?= nlist();
'{mysql-connector-java}' ?= nlist();
'{perl-DBD-MySQL}' ?= nlist();
