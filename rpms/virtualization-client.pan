#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Virtualization Client
# Clients for installing and managing virtualization instances.
#
# mandatory packages
#

unique template rpms/virtualization-client;

prefix '/software/packages';

'{python-virtinst}' ?= nlist();
'{virt-manager}' ?= nlist();
'{virt-viewer}' ?= nlist();
