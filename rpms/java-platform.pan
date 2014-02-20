#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Java Platform
# Java support for the Scientific Linux Server and Desktop Platforms.
#
# mandatory packages
#

unique template rpms/java-platform;

prefix '/software/packages';

'{java-1.6.0-openjdk}' ?= nlist();
'{java-1.7.0-openjdk}' ?= nlist();
