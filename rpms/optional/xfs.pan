#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# XFS
# XFS File System
#
# optional packages
#

unique template rpms/optional/xfs;

prefix '/software/packages';

'{dmapi-devel}' ?= nlist();
'{xfsprogs-devel}' ?= nlist();
