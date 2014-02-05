#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Printing Support
# Install these tools to enable the system to print or act as a print
# server.
#
# optional packages
#

unique template rpms/optional/printing;

prefix '/software/packages';

'{bluez-utils-cups}' ?= nlist();
'{hplip3}' ?= nlist();
'{wacomexpresskeys}' ?= nlist();
