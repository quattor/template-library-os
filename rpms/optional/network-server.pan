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

'{dhcp-server}' ?= dict();
'{krb5-server}' ?= dict();
'{syslinux}' ?= dict();
