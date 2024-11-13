#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Hardware Monitoring Utilities
# A set of tools to monitor server hardware.
#
# default packages
#

unique template rpms/default/hardware-monitoring;

prefix '/software/packages';

'{mcelog}' ?= dict();
'{smartmontools}' ?= dict();
