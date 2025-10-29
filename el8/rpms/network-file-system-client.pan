#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Network File System Client
# Enables the system to attach to network storage.
#
# mandatory packages
#

unique template rpms/network-file-system-client;

prefix '/software/packages';

'{autofs}' ?= dict();
'{cifs-utils}' ?= dict();
'{device-mapper-multipath}' ?= dict();
'{fcoe-utils}' ?= dict();
'{glusterfs-fuse}' ?= dict();
'{gssproxy}' ?= dict();
'{iscsi-initiator-utils}' ?= dict();
'{lldpad}' ?= dict();
'{nfs-utils}' ?= dict();
'{nfs4-acl-tools}' ?= dict();
'{samba-client}' ?= dict();
