#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Network Storage Server
# iSCSI, iSER, and iSNS network storage server.
#
# default packages
#

unique template rpms/default/storage-server;

prefix '/software/packages';

'{scsi-target-utils}' ?= nlist();
