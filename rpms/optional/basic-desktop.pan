#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Desktop
# A minimal desktop that can also be used as a thin client.
#
# optional packages
#

unique template rpms/optional/basic-desktop;

prefix '/software/packages';

'{sabayon-apply}' ?= nlist();
'{tigervnc-server}' ?= nlist();
'{xguest}' ?= nlist();
