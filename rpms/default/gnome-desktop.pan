#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# GNOME
# GNOME is a highly intuitive and user-friendly desktop environment.
#
# default packages
#

unique template rpms/default/gnome-desktop;

prefix '/software/packages';

'{ModemManager}' ?= dict();
'{NetworkManager-adsl}' ?= dict();
'{avahi}' ?= dict();
'{glib-networking}' ?= dict();
'{glibc-all-langpacks}' ?= dict();
'{polkit}' ?= dict();
