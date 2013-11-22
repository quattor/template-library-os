#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Networking Tools
# Tools for configuring and analyzing computer networks.
#
# default packages
#

unique template rpms/default/network-tools;

prefix '/software/packages';

'{nc}' ?= nlist();
'{openswan}' ?= nlist();
