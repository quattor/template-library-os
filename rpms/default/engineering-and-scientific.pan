#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Engineering and Scientific
# This group includes packages for performing mathematical and scientific
# computations and plotting, as well as unit conversion.
#
# default packages
#

unique template rpms/default/engineering-and-scientific;

prefix '/software/packages';

'{gnuplot}' ?= nlist();
'{units}' ?= nlist();
