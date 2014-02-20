#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Performance Tools
# Tools for diagnosing system and application-level performance problems.
#
# optional packages
#

unique template rpms/optional/performance;

prefix '/software/packages';

'{oprofile-jit}' ?= nlist();
'{papi}' ?= nlist();
'{sdparm}' ?= nlist();
'{sg3_utils}' ?= nlist();
'{tuned}' ?= nlist();
'{tuned-utils}' ?= nlist();
