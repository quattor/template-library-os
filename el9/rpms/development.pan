#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Development Tools
# A basic development environment.
#
# mandatory packages
#

unique template rpms/development;

prefix '/software/packages';

'{binutils}' ?= dict();
'{make}' ?= dict();
'{pkgconf}' ?= dict();
'{pkgconf-m4}' ?= dict();
'{pkgconf-pkg-config}' ?= dict();
'{rpm-sign}' ?= dict();
'{strace}' ?= dict();
