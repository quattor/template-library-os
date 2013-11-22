#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# SNMP Support
# SNMP management agent.
#
# default packages
#

unique template rpms/default/system-management-snmp;

prefix '/software/packages';

'{net-snmp-utils}' ?= nlist();
