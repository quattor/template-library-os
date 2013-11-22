#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# KDE Desktop
# A KDE desktop.
#
# optional packages
#

unique template rpms/optional/kde-desktop;

prefix '/software/packages';

'{kdebase-workspace-akonadi}' ?= nlist();
'{kdebase-workspace-python-applet}' ?= nlist();
