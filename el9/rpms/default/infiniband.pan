#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Infiniband Support
# Software designed for supporting clustering, grid connectivity, and
# low-latency, high bandwidth storage using RDMA-based InfiniBand, iWARP,
# RoCE, and OPA fabrics.
#
# default packages
#

unique template rpms/default/infiniband;

prefix '/software/packages';

'{ibacm}' ?= dict();
'{iwpmd}' ?= dict();
'{libibumad}' ?= dict();
'{perftest}' ?= dict();
'{srp_daemon}' ?= dict();
