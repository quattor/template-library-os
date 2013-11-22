#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# OpenAFS Client
# Includes openafs clients
#
# default packages
#

unique template rpms/default/openafs-client;

prefix '/software/packages';

'{openafs-firstboot}' ?= nlist();
'{openafs-krb5}' ?= nlist();
