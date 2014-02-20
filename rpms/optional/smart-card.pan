#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Smart card support
# Support for using smart card authentication.
#
# optional packages
#

unique template rpms/optional/smart-card;

prefix '/software/packages';

'{opencryptoki}' ?= nlist();
