#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# KDE (K Desktop Environment)
# KDE is a powerful, graphical user interface which includes a panel,
# desktop, system icons, and a graphical file manager.
#
# default packages
#

unique template rpms/default/kde-desktop;

prefix '/software/packages';

'{SL_desktop_tweaks}' ?= nlist();
'{desktop-printing}' ?= nlist();
'{im-chooser}' ?= nlist();
'{kdeaccessibility}' ?= nlist();
'{kdeartwork}' ?= nlist();
'{kdenetwork}' ?= nlist();
'{kdeutils}' ?= nlist();
