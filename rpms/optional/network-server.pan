#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Network Infrastructure Server
# Servers for core network protocols and services, such as DHCP or DNS.
#
# optional packages
#

unique template rpms/optional/network-server;

prefix '/software/packages';

'{bind}' ?= nlist();
'{bind-chroot}' ?= nlist();
'{bind-dyndb-ldap}' ?= nlist();
'{dhcp}' ?= nlist();
'{dnsmasq}' ?= nlist();
'{freeradius}' ?= nlist();
'{quagga}' ?= nlist();
'{radvd}' ?= nlist();
'{rsyslog-gnutls}' ?= nlist();
'{rsyslog-gssapi}' ?= nlist();
'{rsyslog-mysql}' ?= nlist();
'{rsyslog-pgsql}' ?= nlist();
'{rsyslog-relp}' ?= nlist();
'{syslinux}' ?= nlist();
'{tftp-server}' ?= nlist();
