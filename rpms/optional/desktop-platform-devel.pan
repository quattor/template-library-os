#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Desktop Platform Development
# Development headers and libraries for developing applications to run on
# the Scientific Linux Desktop Platform.
#
# optional packages
#

unique template rpms/optional/desktop-platform-devel;

prefix '/software/packages';

'{desktop-file-utils}' ?= nlist();
'{glade3}' ?= nlist();
'{gnome-common}' ?= nlist();
'{gnome-devel-docs}' ?= nlist();
'{gtk2-devel-docs}' ?= nlist();
'{kdesdk}' ?= nlist();
'{qt-doc}' ?= nlist();
