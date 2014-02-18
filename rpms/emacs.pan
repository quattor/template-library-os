#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Emacs
# The GNU Emacs text editor.
#
# mandatory packages
#

unique template rpms/emacs;

prefix '/software/packages';

'{emacs}' ?= nlist();
