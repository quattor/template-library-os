#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# XFS
# XFS File System
#
# default packages
#

unique template rpms/default/xfs;

prefix '/software/packages';

'{dmapi}' ?= nlist();
'{xfsdump}' ?= nlist();
'{xfsprogs}' ?= nlist();
