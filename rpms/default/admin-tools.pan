#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Administration Tools
# This group is a collection of graphical administration tools for the
# system, such as for managing user accounts and configuring system
# hardware.
#
# default packages
#

unique template rpms/default/admin-tools;

prefix '/software/packages';

'{authconfig-gtk}' ?= nlist();
'{pirut}' ?= nlist();
'{sabayon}' ?= nlist();
'{setroubleshoot}' ?= nlist();
'{system-config-date}' ?= nlist();
'{system-config-kdump}' ?= nlist();
'{system-config-keyboard}' ?= nlist();
'{system-config-language}' ?= nlist();
'{system-config-lvm}' ?= nlist();
'{system-config-netboot}' ?= nlist();
'{system-config-network}' ?= nlist();
'{system-config-rootpassword}' ?= nlist();
'{system-config-soundcard}' ?= nlist();
'{system-config-users}' ?= nlist();
