#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Dialup Networking Support
#
#
# default packages
#

unique template rpms/default/dialup;

prefix '/software/packages';

'{isdn4k-utils}' ?= nlist();
'{lrzsz}' ?= nlist();
'{minicom}' ?= nlist();
'{wvdial}' ?= nlist();
