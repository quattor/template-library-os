#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Performance Tools
# Tools for diagnosing system and application-level performance problems.
#
# default packages
#

unique template rpms/default/performance;

prefix '/software/packages';

'{dstat}' ?= nlist();
'{iotop}' ?= nlist();
'{latencytop}' ?= nlist();
'{latencytop-tui}' ?= nlist();
'{oprofile}' ?= nlist();
'{perf}' ?= nlist();
'{powertop}' ?= nlist();
'{seekwatcher}' ?= nlist();
