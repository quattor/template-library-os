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
'{infiniband-diags}' ?= dict();
'{iwpmd}' ?= dict();
'{libibmad}' ?= dict();
'{libibumad}' ?= dict();
'{libpsm2}' ?= dict();
'{libpsm2-compat}' ?= dict();
'{opa-address-resolution}' ?= dict();
'{opa-basic-tools}' ?= dict();
'{opa-fastfabric}' ?= dict();
'{opa-libopamgt}' ?= dict();
'{perftest}' ?= dict();
'{srp_daemon}' ?= dict();
