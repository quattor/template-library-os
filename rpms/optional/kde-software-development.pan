#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# KDE Software Development
# Install these packages to develop QT and KDE graphical applications.
#
# optional packages
#

unique template rpms/optional/kde-software-development;

prefix '/software/packages';

'{kdesdk-devel}' ?= nlist();
