#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# SNMP Support
# SNMP management agent.
#
# mandatory packages
#

unique template rpms/system-management-snmp;

prefix '/software/packages';

'{net-snmp}' ?= nlist();
