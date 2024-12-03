#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Smart Card Support
# Support for using smart card authentication.
#
# optional packages
#

unique template rpms/optional/smart-card;

prefix '/software/packages';

'{opencryptoki}' ?= dict();
'{opencryptoki-icsftok}' ?= dict();
'{opencryptoki-swtok}' ?= dict();
'{opensc}' ?= dict();
'{openssl-pkcs11}' ?= dict();
'{sssd-polkit-rules}' ?= dict();
