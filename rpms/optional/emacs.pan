#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Emacs
# The GNU Emacs text editor.
#
# optional packages
#

unique template rpms/optional/emacs;

prefix '/software/packages';

'{emacs-nox}' ?= nlist();
'{gnuplot-emacs}' ?= nlist();
