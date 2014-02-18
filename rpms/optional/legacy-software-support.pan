#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Legacy Software Support
# Libraries for applications built on older releases.
#
# optional packages
#

unique template rpms/optional/legacy-software-support;

prefix '/software/packages';

'{compat-db}' ?= nlist();
'{compat-openldap}' ?= nlist();
'{compat-readline43}' ?= nlist();
'{compat-slang}' ?= nlist();
'{openmotif22}' ?= nlist();
'{openssl097a}' ?= nlist();
'{qt4}' ?= nlist();
