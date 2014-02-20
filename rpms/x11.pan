#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# X Window System
# X Window System Support.
#
# mandatory packages
#

unique template rpms/x11;

prefix '/software/packages';

'{xorg-x11-drivers}' ?= nlist();
'{xorg-x11-server-Xorg}' ?= nlist();
'{xorg-x11-xauth}' ?= nlist();
'{xorg-x11-xinit}' ?= nlist();
