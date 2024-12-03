#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Workstation product core
# Packages mandatory for the workstation product.
#
# mandatory packages
#

unique template rpms/workstation-product;

prefix '/software/packages';

'{rocky-release}' ?= dict();
