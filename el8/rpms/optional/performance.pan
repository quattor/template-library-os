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

'{hdparm}' ?= dict();
'{tuned-profiles-cpu-partitioning}' ?= dict();
