#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Single Node GFS Support
# Packages which provide support for single-node GFS.
#
# default packages
#

unique template rpms/default/single-node-gfs;

prefix '/software/packages';

'{cman}' ?= nlist();
'{gfs2-utils}' ?= nlist();
