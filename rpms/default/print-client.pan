#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Printing client
# Tools for printing to a local printer or a remote print server.
#
# default packages
#

unique template rpms/default/print-client;

prefix '/software/packages';

'{foomatic}' ?= nlist();
'{foomatic-db-ppds}' ?= nlist();
'{gutenprint}' ?= nlist();
'{gutenprint-cups}' ?= nlist();
'{hpijs}' ?= nlist();
'{paps}' ?= nlist();
'{system-config-printer}' ?= nlist();
'{system-config-printer-udev}' ?= nlist();
