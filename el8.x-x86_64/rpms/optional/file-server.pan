#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# File and Storage Server
# CIFS, SMB, NFS, iSCSI, iSER, and iSNS network storage server.
#
# optional packages
#

unique template rpms/optional/file-server;

prefix '/software/packages';

'{isns-utils}' ?= dict();
