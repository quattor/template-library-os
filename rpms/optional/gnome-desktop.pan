#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# GNOME Desktop Environment
# GNOME is a powerful, graphical user interface which includes a panel,
# desktop, system icons, and a graphical file manager.
#
# optional packages
#

unique template rpms/optional/gnome-desktop;

prefix '/software/packages';

'{dasher}' ?= nlist();
'{gconf-editor}' ?= nlist();
'{gnome-bluetooth}' ?= nlist();
'{gnome-keyring-manager}' ?= nlist();
'{hal-gnome}' ?= nlist();
'{pinentry-gtk}' ?= nlist();
