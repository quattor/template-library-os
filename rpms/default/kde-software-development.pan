#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# KDE Software Development
# Install these packages to develop QT and KDE graphical applications.
#
# default packages
#

unique template rpms/default/kde-software-development;

prefix '/software/packages';

'{PyQt-devel}' ?= nlist();
'{kdbg}' ?= nlist();
'{kdebase-devel}' ?= nlist();
'{kdenetwork-devel}' ?= nlist();
'{kdesdk}' ?= nlist();
'{kdeutils-devel}' ?= nlist();
'{kdevelop}' ?= nlist();
'{qt-designer}' ?= nlist();
