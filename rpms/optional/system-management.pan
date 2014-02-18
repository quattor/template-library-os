#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# System Management
# Various low-level hardware management frameworks.
#
# optional packages
#

unique template rpms/optional/system-management;

prefix '/software/packages';

'{OpenIPMI}' ?= nlist();
'{fence-agents}' ?= nlist();
'{freeipmi}' ?= nlist();
'{freeipmi-bmc-watchdog}' ?= nlist();
'{freeipmi-ipmidetectd}' ?= nlist();
'{ipmitool}' ?= nlist();
'{openhpi}' ?= nlist();
'{openhpi-subagent}' ?= nlist();
'{watchdog}' ?= nlist();
