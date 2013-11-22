#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Print Server
# Allows the system to act as a print server.
#
# default packages
#

unique template rpms/default/print-server;

prefix '/software/packages';

'{foomatic-db-ppds}' ?= nlist();
'{gutenprint}' ?= nlist();
'{gutenprint-cups}' ?= nlist();
'{hpijs}' ?= nlist();
'{paps}' ?= nlist();
