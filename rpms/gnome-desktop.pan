#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# GNOME
# GNOME is a highly intuitive and user-friendly desktop environment.
#
# mandatory packages
#

unique template rpms/gnome-desktop;

prefix '/software/packages';

'{ModemManager}' ?= dict();
'{NetworkManager-adsl}' ?= dict();
'{avahi}' ?= dict();
'{glib-networking}' ?= dict();
'{polkit}' ?= dict();
