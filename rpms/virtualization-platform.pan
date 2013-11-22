#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Virtualization Platform
# Provides an interface for accessing and controlling virtualized guests
# and containers.
#
# mandatory packages
#

unique template rpms/virtualization-platform;

prefix '/software/packages';

'{libvirt}' ?= nlist();
'{libvirt-client}' ?= nlist();
'{virt-who}' ?= nlist();
