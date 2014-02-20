#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Graphical Administration Tools
# Graphical system administration tools for managing many aspects of a
# system.
#
# optional packages
#

unique template rpms/optional/graphical-admin-tools;

prefix '/software/packages';

'{audit-viewer}' ?= nlist();
'{firstaidkit-gui}' ?= nlist();
'{policycoreutils-gui}' ?= nlist();
'{sabayon}' ?= nlist();
'{setroubleshoot}' ?= nlist();
'{system-config-kickstart}' ?= nlist();
'{system-config-lvm}' ?= nlist();
'{wireshark-gnome}' ?= nlist();
