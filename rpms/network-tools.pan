#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Networking Tools
# Tools for configuring and analyzing computer networks.
#
# mandatory packages
#

unique template rpms/network-tools;

prefix '/software/packages';

'{tcpdump}' ?= nlist();
