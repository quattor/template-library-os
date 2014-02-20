#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Authoring and Publishing
# These tools allow you to create documentation in the DocBook format and
# convert them to HTML, PDF, Postscript, and text.
#
# default packages
#

unique template rpms/default/authoring-and-publishing;

prefix '/software/packages';

'{docbook-slides}' ?= nlist();
'{docbook-style-dsssl}' ?= nlist();
'{docbook-style-xsl}' ?= nlist();
'{docbook-utils}' ?= nlist();
'{docbook-utils-pdf}' ?= nlist();
'{linuxdoc-tools}' ?= nlist();
'{tetex}' ?= nlist();
'{xhtml1-dtds}' ?= nlist();
'{xmlto}' ?= nlist();
