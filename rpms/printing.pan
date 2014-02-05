#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Printing Support
# Install these tools to enable the system to print or act as a print
# server.
#
# mandatory packages
#

unique template rpms/printing;

prefix '/software/packages';

'{cups}' ?= nlist();
'{ghostscript}' ?= nlist();
