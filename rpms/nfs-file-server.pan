#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# NFS file server
# NFS file server.
#
# mandatory packages
#

unique template rpms/nfs-file-server;

prefix '/software/packages';

'{nfs-utils}' ?= nlist();
'{nfs4-acl-tools}' ?= nlist();
