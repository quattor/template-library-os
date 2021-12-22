#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Dial-up Networking Support
#
#
# default packages
#

unique template rpms/default/dial-up;

prefix '/software/packages';

'{ModemManager}' ?= dict();
'{NetworkManager-adsl}' ?= dict();
'{lrzsz}' ?= dict();
'{minicom}' ?= dict();
