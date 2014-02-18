#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Multimedia
# Various Multimedia Programs
#
# default packages
#

unique template rpms/default/multimedia;

prefix '/software/packages';

'{gstreamer-plugins-extras}' ?= nlist();
'{k3b-extras}' ?= nlist();
'{lame}' ?= nlist();
