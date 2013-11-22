#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Ruby Support
# Ruby interfaces to common libraries and functionality.
#
# mandatory packages
#

unique template rpms/ruby-runtime;

prefix '/software/packages';

'{ruby}' ?= nlist();
