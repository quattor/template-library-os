#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Eclipse
# Eclipse-based Integrated Development Environment.
#
# mandatory packages
#

unique template rpms/eclipse;

prefix '/software/packages';

'{eclipse-cdt}' ?= nlist();
'{eclipse-jdt}' ?= nlist();
