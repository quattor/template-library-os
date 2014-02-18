#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# iSCSI Storage Client
# iSCSI client support
#
# mandatory packages
#

unique template rpms/storage-client-iscsi;

prefix '/software/packages';

'{iscsi-initiator-utils}' ?= nlist();
