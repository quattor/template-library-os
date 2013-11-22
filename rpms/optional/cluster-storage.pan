#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Cluster Storage
# Packages which provide support for cluster storage.
#
# optional packages
#

unique template rpms/optional/cluster-storage;

prefix '/software/packages';

'{isns-utils}' ?= nlist();
'{scsi-target-utils}' ?= nlist();
