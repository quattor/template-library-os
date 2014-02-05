#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# MySQL Database
# This package group contains packages useful for use with MySQL.
#
# mandatory packages
#

unique template rpms/mysql;

prefix '/software/packages';

'{mysql}' ?= nlist();
