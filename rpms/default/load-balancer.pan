#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Load Balancer
# Load balancing support for network traffic
#
# default packages
#

unique template rpms/default/load-balancer;

prefix '/software/packages';

'{piranha}' ?= nlist();
