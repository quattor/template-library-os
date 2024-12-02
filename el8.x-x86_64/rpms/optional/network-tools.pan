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

'{arpwatch}' ?= dict();
'{ipset}' ?= dict();
'{iptraf-ng}' ?= dict();
'{iptstate}' ?= dict();
'{lksctp-tools}' ?= dict();
'{netlabel_tools}' ?= dict();
'{stunnel}' ?= dict();
