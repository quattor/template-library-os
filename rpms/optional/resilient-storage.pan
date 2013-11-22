#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Resilient Storage
# Clustered storage, including the GFS2 filesystem.
#
# optional packages
#

unique template rpms/optional/resilient-storage;

prefix '/software/packages';

'{cluster-glue-libs-devel}' ?= nlist();
'{clusterlib-devel}' ?= nlist();
'{cmirror}' ?= nlist();
'{corosynclib-devel}' ?= nlist();
'{ctdb}' ?= nlist();
'{ctdb-devel}' ?= nlist();
'{fence-virtd-checkpoint}' ?= nlist();
'{libesmtp-devel}' ?= nlist();
'{openaislib-devel}' ?= nlist();
'{pacemaker-libs-devel}' ?= nlist();
