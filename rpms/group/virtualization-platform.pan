unique template rpms/group/virtualization-platform;

prefix '/software/packages';

'{libvirt}' ?= nlist();
'{libvirt-client}' ?= nlist();
'{virt-who}' ?= nlist();
'{fence-virtd-libvirt}' ?= nlist();
'{fence-virtd-multicast}' ?= nlist();
'{fence-virtd-serial}' ?= nlist();
'{libvirt-cim}' ?= nlist();
'{libvirt-java}' ?= nlist();
'{libvirt-snmp}' ?= nlist();
'{perl-Sys-Virt}' ?= nlist();
