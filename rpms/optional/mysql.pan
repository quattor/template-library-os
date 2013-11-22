#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# MySQL Database server
# The MySQL SQL database server, and associated packages.
#
# optional packages
#

unique template rpms/optional/mysql;

prefix '/software/packages';

'{mysql-bench}' ?= nlist();
'{mysql-test}' ?= nlist();
