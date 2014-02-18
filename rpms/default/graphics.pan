#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Graphics
# This group includes packages to help you manipulate and scan images.
#
# default packages
#

unique template rpms/default/graphics;

prefix '/software/packages';

'{ImageMagick}' ?= nlist();
'{dcraw}' ?= nlist();
'{netpbm-progs}' ?= nlist();
'{sane-frontends}' ?= nlist();
'{xsane}' ?= nlist();
