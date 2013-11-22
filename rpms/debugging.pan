#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Debugging Tools
# Tools for debugging misbehaving applications and diagnosing performance
# problems.
#
# mandatory packages
#

unique template rpms/debugging;

prefix '/software/packages';

'{gdb}' ?= nlist();
'{kexec-tools}' ?= nlist();
'{latrace}' ?= nlist();
'{strace}' ?= nlist();
'{systemtap-runtime}' ?= nlist();
