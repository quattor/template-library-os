#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Office/Productivity
# The applications include office suites, PDF viewers, and more.
#
# default packages
#

unique template rpms/default/office;

prefix '/software/packages';

'{evince}' ?= nlist();
'{openoffice.org-calc}' ?= nlist();
'{openoffice.org-draw}' ?= nlist();
'{openoffice.org-graphicfilter}' ?= nlist();
'{openoffice.org-impress}' ?= nlist();
'{openoffice.org-math}' ?= nlist();
'{openoffice.org-writer}' ?= nlist();
'{openoffice.org-xsltfilter}' ?= nlist();
'{planner}' ?= nlist();
