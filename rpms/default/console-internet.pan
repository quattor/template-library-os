#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Console internet tools
# Console internet access tools, often used by administrators.
#
# default packages
#

unique template rpms/default/console-internet;

prefix '/software/packages';

'{elinks}' ?= nlist();
