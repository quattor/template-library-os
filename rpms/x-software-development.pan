#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# X Software Development
# These packages allow you to develop applications for the X Window System.
#
# mandatory packages
#

unique template rpms/x-software-development;

prefix '/software/packages';

'{libICE-devel}' ?= nlist();
'{libX11-devel}' ?= nlist();
'{libXaw-devel}' ?= nlist();
'{libXfixes-devel}' ?= nlist();
'{libXt-devel}' ?= nlist();
