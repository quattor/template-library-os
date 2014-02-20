#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Text-based Internet
# This group includes text-based email, Web, and chat clients. These
# applications do not require the X Window System.
#
# optional packages
#

unique template rpms/optional/text-internet;

prefix '/software/packages';

'{alpine}' ?= nlist();
'{epic}' ?= nlist();
'{lynx}' ?= nlist();
'{tftp}' ?= nlist();
