#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Ruby
# Basic support for the Ruby programming language.
#
# optional packages
#

unique template rpms/optional/ruby;

prefix '/software/packages';

'{eruby}' ?= nlist();
'{ruby-ri}' ?= nlist();
