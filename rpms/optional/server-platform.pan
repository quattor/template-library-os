#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Server Platform
# Supported libraries for the Scientific Linux Server Platform.
#
# optional packages
#

unique template rpms/optional/server-platform;

prefix '/software/packages';

'{libatomic}' ?= nlist();
