#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Development Tools
# These tools include core development tools such as automake, gcc, perl,
# python, and debuggers.
#
# mandatory packages
#

unique template rpms/development-tools;

prefix '/software/packages';

'{autoconf}' ?= nlist();
'{automake}' ?= nlist();
'{binutils}' ?= nlist();
'{bison}' ?= nlist();
'{flex}' ?= nlist();
'{gcc}' ?= nlist();
'{gcc-c++}' ?= nlist();
'{gdb}' ?= nlist();
'{gettext}' ?= nlist();
'{libtool}' ?= nlist();
'{make}' ?= nlist();
'{pkgconfig}' ?= nlist();
'{redhat-rpm-config}' ?= nlist();
'{rpm-build}' ?= nlist();
'{strace}' ?= nlist();
