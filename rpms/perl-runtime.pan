#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Perl Support
# Perl interfaces to common libraries and functionality.
#
# mandatory packages
#

unique template rpms/perl-runtime;

prefix '/software/packages';

'{perl}' ?= nlist();
