#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Print Server
# Allows the system to act as a print server.
#
# mandatory packages
#

unique template rpms/print-server;

prefix '/software/packages';

'{cups}' ?= nlist();
'{printer-filters}' ?= nlist();
