#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# X Window System
# Install this group of packages to use the base graphical (X) user
# interface.
#
# mandatory packages
#

unique template rpms/base-x;

prefix '/software/packages';

'{bitmap-fonts}' ?= nlist();
'{desktop-backgrounds-basic}' ?= nlist();
'{xorg-x11-drivers}' ?= nlist();
'{xorg-x11-fonts-100dpi}' ?= nlist();
'{xorg-x11-fonts-75dpi}' ?= nlist();
'{xorg-x11-fonts-ISO8859-1-100dpi}' ?= nlist();
'{xorg-x11-fonts-ISO8859-1-75dpi}' ?= nlist();
'{xorg-x11-fonts-Type1}' ?= nlist();
'{xorg-x11-fonts-misc}' ?= nlist();
'{xorg-x11-fonts-truetype}' ?= nlist();
'{xorg-x11-server-Xorg}' ?= nlist();
'{xorg-x11-xauth}' ?= nlist();
'{xorg-x11-xfs}' ?= nlist();
'{xorg-x11-xinit}' ?= nlist();
