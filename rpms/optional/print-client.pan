#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Printing client
# Tools for printing to a local printer or a remote print server.
#
# optional packages
#

unique template rpms/optional/print-client;

prefix '/software/packages';

'{hplip}' ?= nlist();
'{hplip-gui}' ?= nlist();
