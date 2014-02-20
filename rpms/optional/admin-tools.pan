#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Administration Tools
# This group is a collection of graphical administration tools for the
# system, such as for managing user accounts and configuring system
# hardware.
#
# optional packages
#

unique template rpms/optional/admin-tools;

prefix '/software/packages';

'{system-config-kickstart}' ?= nlist();
'{tunctl}' ?= nlist();
