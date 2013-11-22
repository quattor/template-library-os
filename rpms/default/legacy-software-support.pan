#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Legacy Software Support
# Libraries for applications built on older releases.
#
# default packages
#

unique template rpms/default/legacy-software-support;

prefix '/software/packages';

'{compat-libgcc-296}' ?= nlist();
'{compat-libstdc++-296}' ?= nlist();
'{compat-libstdc++-33}' ?= nlist();
