#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# FCoE Storage Client
# Fiber Channel over Ethernet support
#
# mandatory packages
#

unique template rpms/storage-client-fcoe;

prefix '/software/packages';

'{fcoe-utils}' ?= nlist();
