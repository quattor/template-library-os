#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Dialup Networking Support
#
#
# optional packages
#

unique template rpms/optional/dialup;

prefix '/software/packages';

'{efax}' ?= nlist();
'{statserial}' ?= nlist();
