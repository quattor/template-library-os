#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Emacs
# The GNU Emacs extensible, customizable, text editor.
#
# optional packages
#

unique template rpms/optional/emacs;

prefix '/software/packages';

'{ctags-etags}' ?= nlist();
'{emacs-auctex}' ?= nlist();
'{emacs-gnuplot}' ?= nlist();
'{emacs-nox}' ?= nlist();
