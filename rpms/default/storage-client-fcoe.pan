#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# FCoE Storage Client
# Fiber Channel over Ethernet support
#
# default packages
#

unique template rpms/default/storage-client-fcoe;

prefix '/software/packages';

'{cgdcbxd}' ?= nlist();
'{fcoe-target-utils}' ?= nlist();
'{lldpad}' ?= nlist();
