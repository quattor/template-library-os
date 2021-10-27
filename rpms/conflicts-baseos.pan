#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Conflicts BaseOS
# This group includes packages conflicting with an everything installation
# from the BaseOS repo
#
# mandatory packages
#

unique template rpms/conflicts-baseos;

prefix '/software/packages';

'{coreutils-single}' ?= dict();
'{libcurl-minimal}' ?= dict();
