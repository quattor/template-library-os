#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Virtualization Client
# Clients for installing and managing virtualization instances.
#
# default packages
#

unique template rpms/default/virtualization-client;

prefix '/software/packages';

'{virt-top}' ?= nlist();
