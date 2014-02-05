#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Network Servers
# These packages include network-based servers such as DHCP, Kerberos and
# NIS.
#
# optional packages
#

unique template rpms/optional/network-server;

prefix '/software/packages';

'{amanda-server}' ?= nlist();
'{dhcp}' ?= nlist();
'{dhcpv6}' ?= nlist();
'{dnsmasq}' ?= nlist();
'{freeradius}' ?= nlist();
'{krb5-server}' ?= nlist();
'{openldap-servers}' ?= nlist();
'{openldap-servers-overlays}' ?= nlist();
'{privoxy}' ?= nlist();
'{quagga}' ?= nlist();
'{radvd}' ?= nlist();
'{vnc-server}' ?= nlist();
'{ypserv}' ?= nlist();
