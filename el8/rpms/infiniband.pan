#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Infiniband Support
# Software designed for supporting clustering, grid connectivity, and
# low-latency, high bandwidth storage using RDMA-based InfiniBand, iWARP,
# RoCE, and OPA fabrics.
#
# mandatory packages
#

unique template rpms/infiniband;

prefix '/software/packages';

'{libibverbs}' ?= dict();
'{libibverbs-utils}' ?= dict();
'{librdmacm}' ?= dict();
'{librdmacm-utils}' ?= dict();
'{rdma-core}' ?= dict();
