#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Virtualization
# Provides an environment for hosting virtualized guests.
#
# default packages
#

unique template rpms/default/virtualization;

prefix '/software/packages';

'{hypervkvpd}' ?= nlist();
