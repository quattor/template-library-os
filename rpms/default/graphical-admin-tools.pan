#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Graphical Administration Tools
# Graphical system administration tools for managing many aspects of a
# system.
#
# default packages
#

unique template rpms/default/graphical-admin-tools;

prefix '/software/packages';

'{authconfig-gtk}' ?= nlist();
'{gnome-disk-utility}' ?= nlist();
'{gnome-packagekit}' ?= nlist();
'{system-config-firewall}' ?= nlist();
'{system-config-kdump}' ?= nlist();
'{system-config-keyboard}' ?= nlist();
'{system-config-services}' ?= nlist();
'{system-config-users}' ?= nlist();
