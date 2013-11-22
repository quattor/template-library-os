#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# KDE (K Desktop Environment)
# KDE is a powerful, graphical user interface which includes a panel,
# desktop, system icons, and a graphical file manager.
#
# optional packages
#

unique template rpms/optional/kde-desktop;

prefix '/software/packages';

'{kdeadmin}' ?= nlist();
'{pinentry-qt}' ?= nlist();
