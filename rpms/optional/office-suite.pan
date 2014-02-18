#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Office Suite and Productivity
# A full-purpose office suite, and other productivity tools.
#
# optional packages
#

unique template rpms/optional/office-suite;

prefix '/software/packages';

'{libreoffice-base}' ?= nlist();
'{libreoffice-emailmerge}' ?= nlist();
'{libreoffice-headless}' ?= nlist();
'{libreoffice-javafilter}' ?= nlist();
'{libreoffice-ogltrans}' ?= nlist();
'{libreoffice-presentation-minimizer}' ?= nlist();
'{libreoffice-report-builder}' ?= nlist();
'{libreoffice-wiki-publisher}' ?= nlist();
'{planner}' ?= nlist();
'{taskjuggler}' ?= nlist();
