#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# FUSE
# FUSE program and plugins
#
# optional packages
#

unique template rpms/optional/fuse;

prefix '/software/packages';

'{fuse-devel}' ?= nlist();
