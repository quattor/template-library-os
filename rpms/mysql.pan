#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# MySQL Database server
# The MySQL SQL database server, and associated packages.
#
# mandatory packages
#

unique template rpms/mysql;

prefix '/software/packages';

'{mysql-server}' ?= nlist();
