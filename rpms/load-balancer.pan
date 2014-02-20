#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Load Balancer
# Load balancing support for network traffic
#
# mandatory packages
#

unique template rpms/load-balancer;

prefix '/software/packages';

'{ipvsadm}' ?= nlist();
