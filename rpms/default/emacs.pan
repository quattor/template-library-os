#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Emacs
# The GNU Emacs text editor.
#
# default packages
#

unique template rpms/default/emacs;

prefix '/software/packages';

'{emacs-leim}' ?= nlist();
'{emacspeak}' ?= nlist();
'{psgml}' ?= nlist();
