#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Smart card support
# Support for using smart card authentication.
#
# default packages
#

unique template rpms/default/smart-card;

prefix '/software/packages';

'{ccid}' ?= nlist();
'{coolkey}' ?= nlist();
'{esc}' ?= nlist();
'{gdm-plugin-smartcard}' ?= nlist();
'{pam_pkcs11}' ?= nlist();
