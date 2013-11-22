#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Editors
# Sometimes called text editors, these are programs that allow you to
# create and edit files. These include Emacs and Vi.
#
# optional packages
#

unique template rpms/optional/editors;

prefix '/software/packages';

'{emacs}' ?= nlist();
'{emacs-nox}' ?= nlist();
'{gnuplot-emacs}' ?= nlist();
'{nedit}' ?= nlist();
'{vim-X11}' ?= nlist();
