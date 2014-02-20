#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Misc Scientific Linux Packages
# These are packages added to Scientific Linux and NOT installed in any
# group, they are here so that they can easily be selected
#
# default packages
#

unique template rpms/default/misc-sl;

prefix '/software/packages';

'{SL_rpm_show_arch}' ?= nlist();
