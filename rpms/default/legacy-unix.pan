#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Legacy UNIX compatibility
# Compatibility programs for migration from or working with legacy UNIX
# environments.
#
# default packages
#

unique template rpms/default/legacy-unix;

prefix '/software/packages';

'{xinetd}' ?= nlist();
