#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Emacs
# The GNU Emacs extensible, customizable, text editor.
#
# mandatory packages
#

unique template rpms/emacs;

prefix '/software/packages';

'{emacs}' ?= nlist();
