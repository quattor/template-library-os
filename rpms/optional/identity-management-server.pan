#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Identity Management Server
# Centralized management of users, servers and authentication policies.
#
# optional packages
#

unique template rpms/optional/identity-management-server;

prefix '/software/packages';

'{nuxwdog}' ?= nlist();
'{slapi-nis}' ?= nlist();
