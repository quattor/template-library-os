#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Urdu Support
#
#
# mandatory packages
#

unique template rpms/language/urdu-support;

prefix '/software/packages';

'{fonts-arabic}' ?= nlist();
'{m17n-db-urdu}' ?= nlist();
