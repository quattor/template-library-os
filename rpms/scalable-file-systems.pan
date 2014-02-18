#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Scalable Filesystems
# Support for large, highly scalable, filesystems.
#
# mandatory packages
#

unique template rpms/scalable-file-systems;

prefix '/software/packages';

'{xfsprogs}' ?= nlist();
