#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# DNS Name Server
# This package group allows you to run a DNS name server (BIND) on the
# system.
#
# mandatory packages
#

unique template rpms/dns-server;

prefix '/software/packages';

'{bind}' ?= nlist();
