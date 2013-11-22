#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Development tools
# A basic development environment.
#
# mandatory packages
#

unique template rpms/development;

prefix '/software/packages';

'{autoconf}' ?= nlist();
'{automake}' ?= nlist();
'{binutils}' ?= nlist();
'{bison}' ?= nlist();
'{flex}' ?= nlist();
'{gcc}' ?= nlist();
'{gcc-c++}' ?= nlist();
'{gettext}' ?= nlist();
'{libtool}' ?= nlist();
'{make}' ?= nlist();
'{patch}' ?= nlist();
'{pkgconfig}' ?= nlist();
'{redhat-rpm-config}' ?= nlist();
'{rpm-build}' ?= nlist();
