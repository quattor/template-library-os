#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# File and Storage Server
# CIFS, SMB, NFS, iSCSI, iSER, and iSNS network storage server.
#
# mandatory packages
#

unique template rpms/file-server;

prefix '/software/packages';

'{cifs-utils}' ?= dict();
'{gssproxy}' ?= dict();
'{nfs-utils}' ?= dict();
'{nfs4-acl-tools}' ?= dict();
'{samba}' ?= dict();
