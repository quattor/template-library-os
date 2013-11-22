#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Cluster Storage
# Packages which provide support for cluster storage.
#
# default packages
#

unique template rpms/default/cluster-storage;

prefix '/software/packages';

'{Global_File_System-en-US}' ?= nlist();
'{cmirror}' ?= nlist();
'{gfs-utils}' ?= nlist();
'{gnbd}' ?= nlist();
'{kmod-cmirror}' ?= nlist();
'{kmod-gfs}' ?= nlist();
'{kmod-gnbd}' ?= nlist();
'{lvm2-cluster}' ?= nlist();
