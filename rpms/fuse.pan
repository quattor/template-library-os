#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# FUSE
# FUSE program and plugins
#
# mandatory packages
#

unique template rpms/fuse;

prefix '/software/packages';

'{fuse}' ?= nlist();
'{fuse-libs}' ?= nlist();
