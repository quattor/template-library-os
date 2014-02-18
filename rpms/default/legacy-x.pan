#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Legacy X Window System compatibility
# Compatibility programs for migration from or working with legacy X Window
# System environments.
#
# default packages
#

unique template rpms/default/legacy-x;

prefix '/software/packages';

'{xorg-x11-fonts-100dpi}' ?= nlist();
'{xorg-x11-fonts-ISO8859-1-100dpi}' ?= nlist();
'{xorg-x11-fonts-Type1}' ?= nlist();
'{xorg-x11-fonts-misc}' ?= nlist();
