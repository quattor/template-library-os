#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Large Systems Performance
# Performance support tools for large systems.
#
# default packages
#

unique template rpms/default/large-systems;

prefix '/software/packages';

'{hwloc}' ?= dict();
'{libhugetlbfs}' ?= dict();
'{libhugetlbfs-utils}' ?= dict();
