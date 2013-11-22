#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# FUSE
# FUSE program and plugins
#
# default packages
#

unique template rpms/default/fuse;

prefix '/software/packages';

'{fuse-smb}' ?= nlist();
'{fuse-sshfs}' ?= nlist();
