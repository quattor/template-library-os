#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Legacy Network Server
# These packages include servers for old network protocols such as rsh and
# telnet.
#
# default packages
#

unique template rpms/default/legacy-network-server;

prefix '/software/packages';

'{rusers}' ?= nlist();
'{rwho}' ?= nlist();
'{xinetd}' ?= nlist();
