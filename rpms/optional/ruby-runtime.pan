#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Ruby Support
# Ruby interfaces to common libraries and functionality.
#
# optional packages
#

unique template rpms/optional/ruby-runtime;

prefix '/software/packages';

'{ruby-irb}' ?= nlist();
