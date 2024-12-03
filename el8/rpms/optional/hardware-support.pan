#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Hardware Support
# This group is a collection of tools for various hardware specific
# utilities.
#
# optional packages
#

unique template rpms/optional/hardware-support;

prefix '/software/packages';

'{lsscsi}' ?= dict();
'{opensc}' ?= dict();
'{openssl-pkcs11}' ?= dict();
'{pcsc-lite}' ?= dict();
'{pcsc-lite-ccid}' ?= dict();
