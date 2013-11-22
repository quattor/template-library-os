#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Infiniband Support
# Software designed for supporting clustering and grid connectivity using
# RDMA-based InfiniBand and iWARP fabrics.
#
# default packages
#

unique template rpms/default/infiniband;

prefix '/software/packages';

'{dapl}' ?= nlist();
'{ibacm}' ?= nlist();
'{ibsim}' ?= nlist();
'{ibutils}' ?= nlist();
'{libcxgb3}' ?= nlist();
'{libibmad}' ?= nlist();
'{libibumad}' ?= nlist();
'{libipathverbs}' ?= nlist();
'{libmlx4}' ?= nlist();
'{libmthca}' ?= nlist();
'{libnes}' ?= nlist();
'{rds-tools}' ?= nlist();
