#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Legacy UNIX Compatibility
# Compatibility programs for migration from or working with legacy UNIX
# environments.
#
# optional packages
#

unique template rpms/optional/legacy-unix;

prefix '/software/packages';

'{mksh}' ?= dict();
