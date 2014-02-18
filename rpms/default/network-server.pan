#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Network Servers
# These packages include network-based servers such as DHCP, Kerberos and
# NIS.
#
# default packages
#

unique template rpms/default/network-server;

prefix '/software/packages';

'{cyrus-sasl}' ?= nlist();
