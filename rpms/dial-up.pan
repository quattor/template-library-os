#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Dial-up Networking Support
# Tools for connecting via PPP or ISDN.
#
# mandatory packages
#

unique template rpms/dial-up;

prefix '/software/packages';

'{ppp}' ?= nlist();
