#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# SNMP Support
# SNMP management agent.
#
# optional packages
#

unique template rpms/optional/system-management-snmp;

prefix '/software/packages';

'{net-snmp-perl}' ?= nlist();
'{net-snmp-python}' ?= nlist();
