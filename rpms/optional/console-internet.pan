#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Console internet tools
# Console internet access tools, often used by administrators.
#
# optional packages
#

unique template rpms/optional/console-internet;

prefix '/software/packages';

'{fetchmail}' ?= nlist();
'{ftp}' ?= nlist();
'{irssi}' ?= nlist();
'{jwhois}' ?= nlist();
'{lftp}' ?= nlist();
'{mutt}' ?= nlist();
