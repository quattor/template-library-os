#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# OpenAFS Client
# Includes openafs clients
#
# optional packages
#

unique template rpms/optional/openafs-client;

prefix '/software/packages';

'{openafs-authlibs}' ?= nlist();
'{openafs-compat}' ?= nlist();
'{openafs-kpasswd}' ?= nlist();
