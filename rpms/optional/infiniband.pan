#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Infiniband Support
# Software designed for supporting clustering and grid connectivity using
# RDMA-based InfiniBand and iWARP fabrics.
#
# optional packages
#

unique template rpms/optional/infiniband;

prefix '/software/packages';

'{compat-dapl}' ?= nlist();
'{infiniband-diags}' ?= nlist();
'{libibcommon}' ?= nlist();
'{mstflint}' ?= nlist();
'{opensm}' ?= nlist();
'{perftest}' ?= nlist();
'{qperf}' ?= nlist();
'{srptools}' ?= nlist();
