#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Debugging Tools
# Tools for debugging misbehaving applications and diagnosing performance
# problems.
#
# default packages
#

unique template rpms/default/debugging;

prefix '/software/packages';

'{cas}' ?= nlist();
'{crash}' ?= nlist();
'{crash-gcore-command}' ?= nlist();
'{crash-trace-command}' ?= nlist();
'{elfutils}' ?= nlist();
'{ltrace}' ?= nlist();
'{trace-cmd}' ?= nlist();
'{valgrind}' ?= nlist();
