#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Scalable Filesystems
# Support for large, highly scalable, filesystems.
#
# default packages
#

unique template rpms/default/scalable-file-systems;

prefix '/software/packages';

'{xfsdump}' ?= nlist();
