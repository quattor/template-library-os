#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Perl Support
# Perl interfaces to common libraries and functionality.
#
# optional packages
#

unique template rpms/optional/perl-runtime;

prefix '/software/packages';

'{perl-DBD-SQLite}' ?= nlist();
'{perl-Date-Calc}' ?= nlist();
'{perl-Date-Manip}' ?= nlist();
'{perl-Frontier-RPC}' ?= nlist();
'{perl-LDAP}' ?= nlist();
'{perl-Mozilla-LDAP}' ?= nlist();
'{perl-suidperl}' ?= nlist();
