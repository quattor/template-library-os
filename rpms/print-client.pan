#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Printing client
# Tools for printing to a local printer or a remote print server.
#
# mandatory packages
#

unique template rpms/print-client;

prefix '/software/packages';

'{cups}' ?= nlist();
'{cups-pk-helper}' ?= nlist();
'{enscript}' ?= nlist();
'{printer-filters}' ?= nlist();
