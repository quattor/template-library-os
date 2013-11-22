#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Text-based Internet
# This group includes text-based email, Web, and chat clients. These
# applications do not require the X Window System.
#
# default packages
#

unique template rpms/default/text-internet;

prefix '/software/packages';

'{cadaver}' ?= nlist();
'{elinks}' ?= nlist();
'{fetchmail}' ?= nlist();
'{mutt}' ?= nlist();
'{slrn}' ?= nlist();
