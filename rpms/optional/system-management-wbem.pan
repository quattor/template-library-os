#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Web-Based Enterprise Management
# WBEM interface for Scientific Linux.
#
# optional packages
#

unique template rpms/optional/system-management-wbem;

prefix '/software/packages';

'{openwsman-server}' ?= nlist();
'{sblim-cim-client}' ?= nlist();
'{sblim-cim-client2}' ?= nlist();
'{sblim-cmpi-dhcp}' ?= nlist();
'{sblim-cmpi-dns}' ?= nlist();
'{sblim-cmpi-fsvol}' ?= nlist();
'{sblim-cmpi-network}' ?= nlist();
'{sblim-cmpi-nfsv3}' ?= nlist();
'{sblim-cmpi-nfsv4}' ?= nlist();
'{sblim-cmpi-params}' ?= nlist();
'{sblim-cmpi-samba}' ?= nlist();
'{sblim-cmpi-sysfs}' ?= nlist();
'{sblim-cmpi-syslog}' ?= nlist();
'{sblim-gather}' ?= nlist();
'{sblim-gather-provider}' ?= nlist();
'{sblim-indication_helper}' ?= nlist();
'{sblim-smis-hba}' ?= nlist();
'{sblim-tools-libra}' ?= nlist();
'{tog-pegasus}' ?= nlist();
