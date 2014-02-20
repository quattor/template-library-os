#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Technical Writing
# Tools for writing technical documentation.
#
# optional packages
#

unique template rpms/optional/technical-writing;

prefix '/software/packages';

'{docbook-utils-pdf}' ?= nlist();
'{texinfo}' ?= nlist();
'{xmlto-tex}' ?= nlist();
'{xmltoman}' ?= nlist();
