#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Legacy Network Server
# These packages include servers for old network protocols such as rsh and
# telnet.
#
# optional packages
#

unique template rpms/optional/legacy-network-server;

prefix '/software/packages';

'{bootparamd}' ?= nlist();
'{rarpd}' ?= nlist();
'{rsh-server}' ?= nlist();
'{rusers-server}' ?= nlist();
'{talk-server}' ?= nlist();
'{telnet-server}' ?= nlist();
'{tftp-server}' ?= nlist();
