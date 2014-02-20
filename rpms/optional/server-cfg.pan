#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Server Configuration Tools
# This group contains all of Red Hat's custom server configuration tools.
#
# optional packages
#

unique template rpms/optional/server-cfg;

prefix '/software/packages';

'{system-config-bind}' ?= nlist();
'{system-config-boot}' ?= nlist();
'{system-switch-mail-gnome}' ?= nlist();
