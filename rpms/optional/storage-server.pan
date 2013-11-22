#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Network Storage Server
# iSCSI, iSER, and iSNS network storage server.
#
# optional packages
#

unique template rpms/optional/storage-server;

prefix '/software/packages';

'{isns-utils}' ?= nlist();
