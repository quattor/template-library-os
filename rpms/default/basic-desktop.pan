#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Desktop
# A minimal desktop that can also be used as a thin client.
#
# default packages
#

unique template rpms/default/basic-desktop;

prefix '/software/packages';

'{control-center-extra}' ?= nlist();
'{eog}' ?= nlist();
'{gdm-plugin-fingerprint}' ?= nlist();
'{gnome-applets}' ?= nlist();
'{gnome-media}' ?= nlist();
'{gnome-packagekit}' ?= nlist();
'{gnome-vfs2-smb}' ?= nlist();
'{gok}' ?= nlist();
'{openssh-askpass}' ?= nlist();
'{orca}' ?= nlist();
'{pulseaudio-module-gconf}' ?= nlist();
'{pulseaudio-module-x11}' ?= nlist();
'{vino}' ?= nlist();
