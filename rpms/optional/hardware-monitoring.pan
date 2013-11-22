#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Hardware monitoring utilities
# A set of tools to monitor server hardware
#
# optional packages
#

unique template rpms/optional/hardware-monitoring;

prefix '/software/packages';

'{edac-utils}' ?= nlist();
'{i2c-tools}' ?= nlist();
'{lm_sensors}' ?= nlist();
