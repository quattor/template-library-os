#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Infiniband Support
# Software designed for supporting clustering, grid connectivity, and
# low-latency, high bandwidth storage using RDMA-based InfiniBand, iWARP,
# RoCE, and OPA fabrics.
#
# optional packages
#

unique template rpms/optional/infiniband;

prefix '/software/packages';

'{opa-fm}' ?= dict();
'{opensm}' ?= dict();
