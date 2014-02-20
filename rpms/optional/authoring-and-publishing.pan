#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Authoring and Publishing
# These tools allow you to create documentation in the DocBook format and
# convert them to HTML, PDF, Postscript, and text.
#
# optional packages
#

unique template rpms/optional/authoring-and-publishing;

prefix '/software/packages';

'{tetex-xdvi}' ?= nlist();
