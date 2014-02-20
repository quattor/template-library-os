#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Legacy X Window System compatibility
# Compatibility programs for migration from or working with legacy X Window
# System environments.
#
# optional packages
#

unique template rpms/optional/legacy-x;

prefix '/software/packages';

'{libXmu}' ?= nlist();
'{libXp}' ?= nlist();
'{openmotif}' ?= nlist();
'{openmotif22}' ?= nlist();
'{xorg-x11-fonts-75dpi}' ?= nlist();
'{xorg-x11-fonts-ISO8859-1-75dpi}' ?= nlist();
'{xorg-x11-fonts-ISO8859-14-100dpi}' ?= nlist();
'{xorg-x11-fonts-ISO8859-14-75dpi}' ?= nlist();
'{xorg-x11-fonts-ISO8859-15-75dpi}' ?= nlist();
'{xorg-x11-fonts-ISO8859-2-100dpi}' ?= nlist();
'{xorg-x11-fonts-ISO8859-2-75dpi}' ?= nlist();
'{xorg-x11-fonts-ISO8859-9-100dpi}' ?= nlist();
'{xorg-x11-fonts-ISO8859-9-75dpi}' ?= nlist();
'{xorg-x11-fonts-cyrillic}' ?= nlist();
'{xorg-x11-fonts-ethiopic}' ?= nlist();
'{xorg-x11-twm}' ?= nlist();
'{xorg-x11-xdm}' ?= nlist();
'{xterm}' ?= nlist();
