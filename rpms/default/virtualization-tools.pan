#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Virtualization Tools
# Tools for offline virtual image management.
#
# default packages
#

unique template rpms/default/virtualization-tools;

prefix '/software/packages';

'{libguestfs}' ?= nlist();
