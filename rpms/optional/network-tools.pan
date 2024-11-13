#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Networking Tools
# Tools for configuring and analyzing computer networks.
#
# optional packages
#

unique template rpms/optional/network-tools;

prefix '/software/packages';

'{ipset}' ?= dict();
'{iptraf-ng}' ?= dict();
'{lksctp-tools}' ?= dict();
'{netlabel_tools}' ?= dict();
'{stunnel}' ?= dict();
