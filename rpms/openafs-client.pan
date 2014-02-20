#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# OpenAFS Client
# Includes openafs clients
#
# mandatory packages
#

unique template rpms/openafs-client;

prefix '/software/packages';

'{openafs}' ?= nlist();
'{openafs-client}' ?= nlist();
