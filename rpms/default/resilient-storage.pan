#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Resilient Storage
# Clustered storage, including the GFS2 filesystem.
#
# default packages
#

unique template rpms/default/resilient-storage;

prefix '/software/packages';

'{ccs}' ?= nlist();
