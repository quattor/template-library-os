#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Virtualization
# Provides an environment for hosting virtualized guests.
#
# optional packages
#

unique template rpms/optional/virtualization;

prefix '/software/packages';

'{qemu-guest-agent}' ?= nlist();
'{qemu-kvm-tools}' ?= nlist();
