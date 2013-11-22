#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# X Window System
# X Window System Support.
#
# default packages
#

unique template rpms/default/x11;

prefix '/software/packages';

'{firstboot}' ?= nlist();
'{glx-utils}' ?= nlist();
'{hal}' ?= nlist();
'{plymouth-system-theme}' ?= nlist();
'{spice-vdagent}' ?= nlist();
'{wacomexpresskeys}' ?= nlist();
'{wdaemon}' ?= nlist();
'{xorg-x11-server-utils}' ?= nlist();
'{xorg-x11-utils}' ?= nlist();
'{xvattr}' ?= nlist();
