#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Virtualization Tools
# Tools for offline virtual image management.
#
# optional packages
#

unique template rpms/optional/virtualization-tools;

prefix '/software/packages';

'{libguestfs-java}' ?= nlist();
'{libguestfs-tools}' ?= nlist();
'{virt-v2v}' ?= nlist();
