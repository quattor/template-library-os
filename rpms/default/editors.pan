#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Editors
# Sometimes called text editors, these are programs that allow you to
# create and edit files. These include Emacs and Vi.
#
# default packages
#

unique template rpms/default/editors;

prefix '/software/packages';

'{emacs-leim}' ?= nlist();
'{emacspeak}' ?= nlist();
'{psgml}' ?= nlist();
'{vim-enhanced}' ?= nlist();
