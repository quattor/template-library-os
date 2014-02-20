#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# High Availability Management
# Management server for the High Availability stack.
#
# mandatory packages
#

unique template rpms/ha-management;

prefix '/software/packages';

'{luci}' ?= nlist();
