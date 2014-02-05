#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# OpenFabrics Enterprise Distribution
# Components used for high performance networking and clustering, such as
# Infiniband and RDMA.
#
# default packages
#

unique template rpms/default/openfabrics-enterprise-distribution;

prefix '/software/packages';

'{compat-dapl}' ?= nlist();
'{compat-dapl-devel}' ?= nlist();
'{compat-dapl-utils}' ?= nlist();
'{dapl}' ?= nlist();
'{dapl-devel}' ?= nlist();
'{dapl-utils}' ?= nlist();
'{ibutils}' ?= nlist();
'{infiniband-diags}' ?= nlist();
'{libcxgb3}' ?= nlist();
'{libcxgb4}' ?= nlist();
'{libibcm}' ?= nlist();
'{libibverbs}' ?= nlist();
'{libibverbs-utils}' ?= nlist();
'{libmlx4}' ?= nlist();
'{libmthca}' ?= nlist();
'{libnes}' ?= nlist();
'{librdmacm}' ?= nlist();
'{librdmacm-utils}' ?= nlist();
'{libsdp}' ?= nlist();
'{mpitests-openmpi}' ?= nlist();
'{ofed-docs}' ?= nlist();
'{openib}' ?= nlist();
'{openmpi}' ?= nlist();
'{perftest}' ?= nlist();
'{qperf}' ?= nlist();
'{rds-tools}' ?= nlist();
