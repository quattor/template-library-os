#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Debugging Tools
# Tools for debugging misbehaving applications and diagnosing performance
# problems.
#
# optional packages
#

unique template rpms/optional/debugging;

prefix '/software/packages';

'{abrt-addon-ccpp}' ?= nlist();
'{abrt-addon-python}' ?= nlist();
'{abrt-cli}' ?= nlist();
'{flightrecorder}' ?= nlist();
'{gdb-gdbserver}' ?= nlist();
'{glibc-utils}' ?= nlist();
'{lslk}' ?= nlist();
'{memtest86+}' ?= nlist();
'{ps_mem}' ?= nlist();
'{systemtap-client}' ?= nlist();
'{systemtap-initscript}' ?= nlist();
