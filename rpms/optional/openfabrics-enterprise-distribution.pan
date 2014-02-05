#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# OpenFabrics Enterprise Distribution
# Components used for high performance networking and clustering, such as
# Infiniband and RDMA.
#
# optional packages
#

unique template rpms/optional/openfabrics-enterprise-distribution;

prefix '/software/packages';

'{compat-dapl-static}' ?= nlist();
'{dapl-static}' ?= nlist();
'{ibsim}' ?= nlist();
'{mpitests-mvapich}' ?= nlist();
'{mpitests-mvapich2}' ?= nlist();
'{mstflint}' ?= nlist();
'{mvapich}' ?= nlist();
'{mvapich2}' ?= nlist();
'{opensm}' ?= nlist();
'{qlvnictools}' ?= nlist();
'{srptools}' ?= nlist();
'{tvflash}' ?= nlist();
