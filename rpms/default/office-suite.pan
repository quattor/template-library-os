#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Office Suite and Productivity
# A full-purpose office suite, and other productivity tools.
#
# default packages
#

unique template rpms/default/office-suite;

prefix '/software/packages';

'{libreoffice-calc}' ?= nlist();
'{libreoffice-draw}' ?= nlist();
'{libreoffice-graphicfilter}' ?= nlist();
'{libreoffice-impress}' ?= nlist();
'{libreoffice-math}' ?= nlist();
'{libreoffice-writer}' ?= nlist();
'{libreoffice-xsltfilter}' ?= nlist();
