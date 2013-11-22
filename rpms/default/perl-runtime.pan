#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Perl Support
# Perl interfaces to common libraries and functionality.
#
# default packages
#

unique template rpms/default/perl-runtime;

prefix '/software/packages';

'{perl-Crypt-SSLeay}' ?= nlist();
'{perl-XML-Dumper}' ?= nlist();
'{perl-XML-Grove}' ?= nlist();
'{perl-XML-Twig}' ?= nlist();
'{perl-core}' ?= nlist();
