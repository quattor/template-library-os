#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Infiniband Support
# Software designed for supporting clustering and grid connectivity using
# RDMA-based InfiniBand and iWARP fabrics.
#
# mandatory packages
#

unique template rpms/infiniband;

prefix '/software/packages';

'{libibcm}' ?= nlist();
'{libibverbs}' ?= nlist();
'{libibverbs-utils}' ?= nlist();
'{librdmacm}' ?= nlist();
'{librdmacm-utils}' ?= nlist();
'{rdma}' ?= nlist();
