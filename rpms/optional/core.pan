#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Core
# Smallest possible installation.
#
# optional packages
#

unique template rpms/optional/core;

prefix '/software/packages';

'{dracut-fips}' ?= nlist();
'{dracut-network}' ?= nlist();
