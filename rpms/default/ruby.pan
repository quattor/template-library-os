#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Ruby
# Basic support for the Ruby programming language.
#
# default packages
#

unique template rpms/default/ruby;

prefix '/software/packages';

'{ruby-devel}' ?= nlist();
'{ruby-mode}' ?= nlist();
