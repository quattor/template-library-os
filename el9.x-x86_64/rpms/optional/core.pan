#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Core
# Minimal host installation
#
# optional packages
#

unique template rpms/optional/core;

prefix '/software/packages';

'{dracut-config-generic}' ?= dict();
'{dracut-network}' ?= dict();
'{rdma-core}' ?= dict();
'{selinux-policy-mls}' ?= dict();
'{tboot}' ?= dict();
