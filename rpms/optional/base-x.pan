#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# X Window System
# Install this group of packages to use the base graphical (X) user
# interface.
#
# optional packages
#

unique template rpms/optional/base-x;

prefix '/software/packages';

'{ibmasm-xinput}' ?= nlist();
'{libpciaccess}' ?= nlist();
'{switchdesk}' ?= nlist();
'{xorg-x11-resutils}' ?= nlist();
'{xorg-x11-server-Xnest}' ?= nlist();
'{xorg-x11-server-Xvfb}' ?= nlist();
'{xorg-x11-utils}' ?= nlist();
'{xorg-x11-xdm}' ?= nlist();
'{xorg-x11-xfs-utils}' ?= nlist();
'{xorg-x11-xfwp}' ?= nlist();
'{xorg-x11-xsm}' ?= nlist();
