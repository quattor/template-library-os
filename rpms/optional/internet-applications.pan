#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Internet Applications
# Email, chat, and video conferencing software.
#
# optional packages
#

unique template rpms/optional/internet-applications;

prefix '/software/packages';

'{evolution-exchange}' ?= nlist();
'{thunderbird}' ?= nlist();
'{xchat}' ?= nlist();
