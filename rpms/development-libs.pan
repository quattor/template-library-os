#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Development Libraries
# The packages in this group are core libraries needed to develop
# applications.
#
# mandatory packages
#

unique template rpms/development-libs;

prefix '/software/packages';

'{bzip2-devel}' ?= nlist();
'{glibc-devel}' ?= nlist();
'{libtermcap-devel}' ?= nlist();
'{log4cpp}' ?= nlist();
'{ncurses-devel}' ?= nlist();
'{pam-devel}' ?= nlist();
'{readline-devel}' ?= nlist();
'{zlib-devel}' ?= nlist();
