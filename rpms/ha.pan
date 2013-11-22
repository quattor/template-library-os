#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# High Availability
# Infrastructure for highly available services and/or shared storage.
#
# mandatory packages
#

unique template rpms/ha;

prefix '/software/packages';

'{cman}' ?= nlist();
