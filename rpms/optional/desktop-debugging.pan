#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Desktop Debugging and Performance Tools
# GUI tools for debugging applications and performance.
#
# optional packages
#

unique template rpms/optional/desktop-debugging;

prefix '/software/packages';

'{abrt-desktop}' ?= nlist();
'{abrt-gui}' ?= nlist();
'{bltk}' ?= nlist();
'{oprofile-gui}' ?= nlist();
'{xrestop}' ?= nlist();
