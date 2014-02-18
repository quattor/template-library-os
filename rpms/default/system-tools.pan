#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# System Tools
# This group is a collection of various tools for the system, such as the
# client for connecting to SMB shares and tools to monitor network
# traffic.
#
# default packages
#

unique template rpms/default/system-tools;

prefix '/software/packages';

'{OpenIPMI-tools}' ?= nlist();
'{bluez-gnome}' ?= nlist();
'{bluez-hcidump}' ?= nlist();
'{dmidecode}' ?= nlist();
'{net-snmp-libs}' ?= nlist();
'{nmap}' ?= nlist();
'{ntp}' ?= nlist();
'{openldap-clients}' ?= nlist();
'{samba-client}' ?= nlist();
'{screen}' ?= nlist();
'{vnc}' ?= nlist();
'{xdelta}' ?= nlist();
'{zisofs-tools}' ?= nlist();
'{zsh}' ?= nlist();
