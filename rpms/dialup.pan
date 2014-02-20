#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Dialup Networking Support
#
#
# mandatory packages
#

unique template rpms/dialup;

prefix '/software/packages';

'{ppp}' ?= nlist();
