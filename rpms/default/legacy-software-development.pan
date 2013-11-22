#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Legacy Software Development
# These packages provide compatibility support with previous releases.
#
# default packages
#

unique template rpms/default/legacy-software-development;

prefix '/software/packages';

'{compat-gcc-34}' ?= nlist();
'{compat-gcc-34-c++}' ?= nlist();
'{compat-gcc-34-g77}' ?= nlist();
'{compat-glibc}' ?= nlist();
'{compat-libcom_err}' ?= nlist();
'{compat-libgcc-296}' ?= nlist();
'{compat-libstdc++-296}' ?= nlist();
'{compat-libstdc++-33}' ?= nlist();
