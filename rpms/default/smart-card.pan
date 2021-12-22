#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Smart Card Support
# Support for using smart card authentication.
#
# default packages
#

unique template rpms/default/smart-card;

prefix '/software/packages';

'{pcsc-lite-ccid}' ?= dict();
