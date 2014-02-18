#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# High Availability
# Infrastructure for highly available services and/or shared storage.
#
# default packages
#

unique template rpms/default/ha;

prefix '/software/packages';

'{ccs}' ?= nlist();
'{omping}' ?= nlist();
'{rgmanager}' ?= nlist();
