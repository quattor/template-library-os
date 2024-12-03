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

'{elfutils}' ?= dict();
'{iotop}' ?= dict();
'{perf}' ?= dict();
'{strace}' ?= dict();
