#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# XFS
# XFS File System
#
# mandatory packages
#

unique template rpms/xfs;

prefix '/software/packages';

'{xfs-filesystem}' ?= nlist();
