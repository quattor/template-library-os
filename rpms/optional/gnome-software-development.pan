#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# GNOME Software Development
# Install these packages in order to develop GTK+ and GNOME graphical
# applications.
#
# optional packages
#

unique template rpms/optional/gnome-software-development;

prefix '/software/packages';

'{gob2}' ?= nlist();
'{libgconf-java}' ?= nlist();
'{libglade-java}' ?= nlist();
'{libgnome-java}' ?= nlist();
'{libgtk-java}' ?= nlist();
