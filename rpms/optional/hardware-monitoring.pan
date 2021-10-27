#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Hardware Monitoring Utilities
# A set of tools to monitor server hardware.
#
# optional packages
#

unique template rpms/optional/hardware-monitoring;

prefix '/software/packages';

'{intel-cmt-cat}' ?= dict();
'{lm_sensors}' ?= dict();
