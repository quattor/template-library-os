#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Resilient Storage
# Clustered storage, including the GFS2 filesystem.
#
# mandatory packages
#

unique template rpms/resilient-storage;

prefix '/software/packages';

'{gfs2-utils}' ?= nlist();
'{lvm2-cluster}' ?= nlist();
