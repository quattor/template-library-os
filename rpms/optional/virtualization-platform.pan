#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Virtualization Platform
# Provides an interface for accessing and controlling virtualized guests
# and containers.
#
# optional packages
#

unique template rpms/optional/virtualization-platform;

prefix '/software/packages';

'{fence-virtd-libvirt}' ?= nlist();
'{fence-virtd-multicast}' ?= nlist();
'{fence-virtd-serial}' ?= nlist();
'{libvirt-cim}' ?= nlist();
'{libvirt-java}' ?= nlist();
'{libvirt-snmp}' ?= nlist();
'{perl-Sys-Virt}' ?= nlist();
