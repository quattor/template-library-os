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

'{m17n-contrib-urdu}' ?= nlist();
'{paktype-naqsh-fonts}' ?= nlist();
'{paktype-tehreer-fonts}' ?= nlist();
