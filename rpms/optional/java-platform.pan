#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Java Platform
# Java support for the Scientific Linux Server and Desktop Platforms.
#
# optional packages
#

unique template rpms/optional/java-platform;

prefix '/software/packages';

'{icedtea-web}' ?= nlist();
