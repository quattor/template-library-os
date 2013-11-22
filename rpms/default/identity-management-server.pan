#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Identity Management Server
# Centralized management of users, servers and authentication policies.
#
# default packages
#

unique template rpms/default/identity-management-server;

prefix '/software/packages';

'{389-ds-base}' ?= nlist();
'{ipa-admintools}' ?= nlist();
'{ipa-pki-ca-theme}' ?= nlist();
'{ipa-pki-common-theme}' ?= nlist();
'{ipa-server}' ?= nlist();
'{mod_revocator}' ?= nlist();
'{pki-ca}' ?= nlist();
'{pki-silent}' ?= nlist();
