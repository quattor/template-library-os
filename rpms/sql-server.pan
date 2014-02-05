#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# PostgreSQL Database
# This package group includes packages useful for use with Postgresql.
#
# mandatory packages
#

unique template rpms/sql-server;

prefix '/software/packages';

'{postgresql}' ?= nlist();
