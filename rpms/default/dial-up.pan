#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Dial-up Networking Support
# Tools for connecting via PPP or ISDN.
#
# default packages
#

unique template rpms/default/dial-up;

prefix '/software/packages';

'{lrzsz}' ?= nlist();
'{minicom}' ?= nlist();
'{wvdial}' ?= nlist();
