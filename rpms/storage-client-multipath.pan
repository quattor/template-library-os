#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Storage Availability Tools
# A set of tools to manage SAN path availability
#
# mandatory packages
#

unique template rpms/storage-client-multipath;

prefix '/software/packages';

'{device-mapper-multipath}' ?= nlist();
