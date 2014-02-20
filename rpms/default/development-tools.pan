#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Development Tools
# These tools include core development tools such as automake, gcc, perl,
# python, and debuggers.
#
# default packages
#

unique template rpms/default/development-tools;

prefix '/software/packages';

'{automake14}' ?= nlist();
'{automake15}' ?= nlist();
'{automake16}' ?= nlist();
'{automake17}' ?= nlist();
'{byacc}' ?= nlist();
'{cscope}' ?= nlist();
'{ctags}' ?= nlist();
'{cvs}' ?= nlist();
'{dev86}' ?= nlist();
'{diffstat}' ?= nlist();
'{dogtail}' ?= nlist();
'{doxygen}' ?= nlist();
'{elfutils}' ?= nlist();
'{gcc-gfortran}' ?= nlist();
'{indent}' ?= nlist();
'{ltrace}' ?= nlist();
'{oprofile}' ?= nlist();
'{patchutils}' ?= nlist();
'{pstack}' ?= nlist();
'{python-ldap}' ?= nlist();
'{rcs}' ?= nlist();
'{splint}' ?= nlist();
'{subversion}' ?= nlist();
'{swig}' ?= nlist();
'{systemtap}' ?= nlist();
'{texinfo}' ?= nlist();
'{valgrind}' ?= nlist();
