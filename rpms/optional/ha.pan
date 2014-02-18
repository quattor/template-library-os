#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# High Availability
# Infrastructure for highly available services and/or shared storage.
#
# optional packages
#

unique template rpms/optional/ha;

prefix '/software/packages';

'{cluster-cim}' ?= nlist();
'{cluster-glue-libs-devel}' ?= nlist();
'{cluster-snmp}' ?= nlist();
'{clusterlib-devel}' ?= nlist();
'{corosynclib-devel}' ?= nlist();
'{fence-virtd-checkpoint}' ?= nlist();
'{foghorn}' ?= nlist();
'{libesmtp-devel}' ?= nlist();
'{openaislib-devel}' ?= nlist();
'{pacemaker}' ?= nlist();
'{pacemaker-libs-devel}' ?= nlist();
'{python-repoze-what-quickstart}' ?= nlist();
