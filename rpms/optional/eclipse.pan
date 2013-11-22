#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Eclipse
# Eclipse-based Integrated Development Environment.
#
# optional packages
#

unique template rpms/optional/eclipse;

prefix '/software/packages';

'{eclipse-mylyn-cdt}' ?= nlist();
'{eclipse-mylyn-pde}' ?= nlist();
'{eclipse-mylyn-trac}' ?= nlist();
'{eclipse-mylyn-webtasks}' ?= nlist();
'{eclipse-mylyn-wikitext}' ?= nlist();
'{eclipse-subclipse-graph}' ?= nlist();
