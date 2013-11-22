#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Network file system client
# Enables the system to attach to network storage.
#
# default packages
#

unique template rpms/default/network-file-system-client;

prefix '/software/packages';

'{autofs}' ?= nlist();
'{cifs-utils}' ?= nlist();
'{nfs-utils}' ?= nlist();
'{nfs4-acl-tools}' ?= nlist();
'{samba-client}' ?= nlist();
