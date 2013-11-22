#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Large Systems Performance
# Performance support tools for large systems
#
# default packages
#

unique template rpms/default/large-systems;

prefix '/software/packages';

'{hwloc}' ?= nlist();
'{libcgroup}' ?= nlist();
'{libhugetlbfs}' ?= nlist();
'{libhugetlbfs-utils}' ?= nlist();
'{libtopology}' ?= nlist();
