#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Mainframe Access
# Tools for accessing mainframe computing resources.
#
# default packages
#

unique template rpms/default/mainframe-access;

prefix '/software/packages';

'{tn5250}' ?= nlist();
'{x3270-x11}' ?= nlist();
