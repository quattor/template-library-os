#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Graphical Administration Tools
# Graphical system administration tools for managing many aspects of a
# system.
#
# mandatory packages
#

unique template rpms/graphical-admin-tools;

prefix '/software/packages';

'{dbus}' ?= nlist();
