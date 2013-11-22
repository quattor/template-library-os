#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# GNOME Desktop Environment
# GNOME is a powerful, graphical user interface which includes a panel,
# desktop, system icons, and a graphical file manager.
#
# mandatory packages
#

unique template rpms/gnome-desktop;

prefix '/software/packages';

'{control-center}' ?= nlist();
'{gnome-applets}' ?= nlist();
'{gnome-panel}' ?= nlist();
'{gnome-session}' ?= nlist();
'{gnome-terminal}' ?= nlist();
'{metacity}' ?= nlist();
'{nautilus}' ?= nlist();
'{yelp}' ?= nlist();
