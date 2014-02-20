#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Printing Support
# Install these tools to enable the system to print or act as a print
# server.
#
# default packages
#

unique template rpms/default/printing;

prefix '/software/packages';

'{a2ps}' ?= nlist();
'{enscript}' ?= nlist();
'{hal-cups-utils}' ?= nlist();
'{hplip}' ?= nlist();
'{samba-client}' ?= nlist();
'{system-config-printer}' ?= nlist();
