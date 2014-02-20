#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Directory Client
# Clients for integration into a network managed by a directory service.
#
# default packages
#

unique template rpms/default/directory-client;

prefix '/software/packages';

'{ipa-client}' ?= nlist();
'{oddjob-mkhomedir}' ?= nlist();
'{sssd}' ?= nlist();
'{ypbind}' ?= nlist();
