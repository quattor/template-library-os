#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Hardware monitoring utilities
# A set of tools to monitor server hardware
#
# default packages
#

unique template rpms/default/hardware-monitoring;

prefix '/software/packages';

'{mcelog}' ?= nlist();
'{smartmontools}' ?= nlist();
