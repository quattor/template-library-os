#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# TeX support
# Support for the TeX document formatting system.
#
# mandatory packages
#

unique template rpms/tex;

prefix '/software/packages';

'{tex-cm-lgc}' ?= nlist();
'{texlive}' ?= nlist();
'{texlive-latex}' ?= nlist();
