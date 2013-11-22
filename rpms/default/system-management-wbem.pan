#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Web-Based Enterprise Management
# WBEM interface for Scientific Linux.
#
# default packages
#

unique template rpms/default/system-management-wbem;

prefix '/software/packages';

'{openwsman-client}' ?= nlist();
'{sblim-sfcb}' ?= nlist();
'{sblim-wbemcli}' ?= nlist();
'{wsmancli}' ?= nlist();
