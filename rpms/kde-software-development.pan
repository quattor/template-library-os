#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# KDE Software Development
# Install these packages to develop QT and KDE graphical applications.
#
# mandatory packages
#

unique template rpms/kde-software-development;

prefix '/software/packages';

'{arts-devel}' ?= nlist();
'{kdelibs-devel}' ?= nlist();
'{qt-devel}' ?= nlist();
