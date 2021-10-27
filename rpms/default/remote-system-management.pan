#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Remote Management for Linux
# Remote management interface for CentOS Linux.
#
# default packages
#

unique template rpms/default/remote-system-management;

prefix '/software/packages';

'{cockpit}' ?= dict();
