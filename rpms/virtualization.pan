#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Virtualization
# Provides an environment for hosting virtualized guests.
#
# mandatory packages
#

unique template rpms/virtualization;

prefix '/software/packages';

'{qemu-kvm}' ?= nlist();
