#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Desktop Platform
# Supported libraries for the Scientific Linux Desktop Platform.
#
# optional packages
#

unique template rpms/optional/desktop-platform;

prefix '/software/packages';

'{qt-mysql}' ?= nlist();
'{qt-odbc}' ?= nlist();
'{qt-postgresql}' ?= nlist();
'{qt3-MySQL}' ?= nlist();
'{qt3-ODBC}' ?= nlist();
'{qt3-PostgreSQL}' ?= nlist();
